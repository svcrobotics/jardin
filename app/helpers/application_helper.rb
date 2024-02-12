module ApplicationHelper
  def markdown_to_html(text)
    return "" if text.nil?

    renderer = Redcarpet::Render::HTML.new
    markdown = Redcarpet::Markdown.new(renderer)
    markdown.render(text).html_safe
  end
end
