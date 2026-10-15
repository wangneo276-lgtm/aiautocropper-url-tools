module AiautocropperUrlTools
  BASE = "https://aiautocropper.com"
  PAGES = { "pricing" => "/pricing", "blog" => "/blog" }
  def self.home_url
    BASE + "/"
  end

  def self.page_url(name)
    path = PAGES[name]
    raise ArgumentError, "unknown page: #{name}" if path.nil?
    BASE + path
  end

  def self.workflow_url(slug)
    allowed = ["crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images"]
    raise ArgumentError, "unknown workflow_url: #{slug}" unless allowed.include?(slug)
    BASE + "/" + slug + ""
  end
end
