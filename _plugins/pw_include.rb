
module Jekyll
  module Tags
    class PwIncludeTag < IncludeTag

      def render(context)
        name = render_variable(context)
        basename = File.basename(name)
        ext = basename[/\.[a-z]+$/, 0]
        slug = basename.sub(ext, '')

        "\n\n<article class=\"doc-item\"><a name=\"#{slug}\"></a>\n\n" + super + "\n\n</article>"
      end
    end
  end
end

Liquid::Template.register_tag('pw_include', Jekyll::Tags::PwIncludeTag)
