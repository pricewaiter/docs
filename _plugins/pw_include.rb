
module Jekyll
  module Tags
    class PwIncludeTag < IncludeTag

      def render(context)
        name = render_variable(context)
        basename = File.basename(name)
        ext = basename[/\.[a-z]+$/, 0]
        slug = basename.sub(ext, '')

        "\n\n<a name=\"#{slug}\"></a>\n\n" + super
      end
    end
  end
end

Liquid::Template.register_tag('pw_include', Jekyll::Tags::PwIncludeTag)
