import Foundation

public enum UrlError: Error { case unknown(String, String) }

public enum Urls {
    public static let base = "https://aiautocropper.com"
    private static let pages: [String: String] = ["pricing": "/pricing", "blog": "/blog"]
    public static func homeUrl() -> String { base + "/" }
    public static func pageUrl(_ name: String) throws -> String {
        guard let path = pages[name] else { throw UrlError.unknown("page", name) }
        return base + path
    }

    public static func workflowUrl(_ slug: String) throws -> String {
        let allowed = ["crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images"]
        guard allowed.contains(slug) else { throw UrlError.unknown("workflow_url", slug) }
        return base + "/" + slug + ""
    }
}
