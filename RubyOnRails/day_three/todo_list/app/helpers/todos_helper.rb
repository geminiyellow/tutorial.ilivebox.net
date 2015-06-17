module TodosHelper
  def new_line_br(context)
    # simple_format(html_escape(context))
    html_escape(context).gsub(/(?:\n\r?|\r\n?)/, '<br>').html_safe
  end
end
