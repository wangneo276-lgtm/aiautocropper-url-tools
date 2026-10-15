class Urls {
  static const base = 'https://aiautocropper.com';
  static const pages = <String, String>{ 'pricing': '/pricing', 'blog': '/blog' };
  String homeUrl() => base + '/';
  String pageUrl(String name) {
    final path = pages[name];
    if (path == null) throw ArgumentError('unknown page: $name');
    return base + path;
  }

  String workflow_url(String slug) {
    const allowed = ['crop-scanned-photos', 'split-multiple-photos-from-scan', 'crop-photo-album-pages', 'auto-crop-photos', 'batch-crop-images'];
    if (!allowed.contains(slug)) throw ArgumentError('unknown workflow_url: $slug');
    return base + '/' + slug + '';
  }
}
