# frozen_string_literal: true

require "rails_helper"

RSpec.describe BreadcrumbsOnRails::JsonLd::Builder, type: :helper do
  subject { helper.render_breadcrumbs(builder: described_class) }

  let(:expectation) do
    JSON.pretty_generate(
      "@context": "http://schema.org",
      "@type": "BreadcrumbList",
      "itemListElement": expected_item_list_element,
    )
  end

  context "when #add_breadcrumb is not called in advance" do
    let(:expected_item_list_element) { [] }
    it { is_expected.to eq expectation }
  end

  context "when #add_breadcrumb is called in advance" do
    before do
      helper.add_breadcrumb("root", :root_path)
      helper.add_breadcrumb("foo", proc { |c| c.foo_path })
      helper.add_breadcrumb("bar", "/foo/bar")
    end

    let(:expected_item_list_element) do
      [
        {
          "@type": "ListItem",
          position: 1,
          item: {
            "@id": "http://test.host/",
            name: "root",
          },
        },
        {
          "@type": "ListItem",
          position: 2,
          item: {
            "@id": "http://test.host/foo",
            name: "foo",
          },
        },
        {
          "@type": "ListItem",
          position: 3,
          item: {
            "@id": "http://test.host/foo/bar",
            name: "bar",
          },
        },
      ]
    end

    it { is_expected.to eq expectation }
  end
end
