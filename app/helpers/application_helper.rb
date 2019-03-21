module ApplicationHelper

  def syntax_highlight(text)
    # Initialized in config/initializers/rouge_highlighter.rb
    html = HighlightSource.render(text)
    html.html_safe
  end

  def base_host
    http_host = Rails.application.routes.default_url_options[:host]
    http_host = "#{http_host}:#{Rails.application.routes.default_url_options[:port]}" if Rails.application.routes.default_url_options.key?(:port)
    http_host
  end

end
