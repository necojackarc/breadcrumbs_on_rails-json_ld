require "breadcrumbs_on_rails"

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
            "@id" => element_id(element),
            "name" => compute_name(element),
          },
        }
      end

      def element_id(element)
        url = @context.root_url
        url.gsub!(@context.locale.to_s, '')  unless I18n.default_locale == @context.locale
        "#{url.chop}#{compute_path(element)}"
      end
    end
  end
end
