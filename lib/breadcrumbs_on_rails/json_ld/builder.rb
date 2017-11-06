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
            "@id" => "#{@context.root_url.chop}#{compute_path(element)}",
            "name" => compute_name(element),
          },
        }
      end
    end
  end
end
