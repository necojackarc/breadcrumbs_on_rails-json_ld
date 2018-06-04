require "breadcrumbs_on_rails"
require "uri"

module BreadcrumbsOnRails
  module JsonLd
    class Builder < BreadcrumbsOnRails::Breadcrumbs::Builder
      def render
        JSON.pretty_generate(
          "@context" => "http://schema.org",
          "@type" => "BreadcrumbList",
          "itemListElement" =>
            @elements.map.with_index(1) { |elt, idx| render_element(elt, idx) },
        )
      end

      private

      def render_element(element, index)
        {
          "@type" => "ListItem",
          "position" => index,
          "item" => {
            "@id" => URI.join(
              URI.escape(@context.root_url),
              URI.escape(compute_path(element)),
            ).to_s,
            "name" => compute_name(element),
          },
        }
      end
    end
  end
end
