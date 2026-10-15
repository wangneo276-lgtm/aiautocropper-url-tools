require_relative 'lib/aiautocropper_url_tools'
raise 'home' unless AiautocropperUrlTools.home_url == "https://aiautocropper.com/"
raise 'page' unless AiautocropperUrlTools.page_url("pricing") == "https://aiautocropper.com/pricing"
begin
  AiautocropperUrlTools.page_url('not-a-page')
  raise 'page should fail'
rescue ArgumentError
end
raise 'extra' unless AiautocropperUrlTools.workflow_url("crop-scanned-photos") == "https://aiautocropper.com/crop-scanned-photos"
begin
  AiautocropperUrlTools.workflow_url('NOT A SLUG')
  raise 'extra should fail'
rescue ArgumentError
end
puts 'ok'
