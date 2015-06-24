module HomeHelper
  def javascript_jquery_ready(script)
    content_for(:javascript_jquery_ready) {
      script .gsub(/(<script>|<\/script>)/, "")
  }
  end
end
