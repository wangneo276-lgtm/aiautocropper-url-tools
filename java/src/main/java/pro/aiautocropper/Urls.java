package pro.aiautocropper;

import java.util.HashMap;
import java.util.Map;

public final class Urls {
    public static final String BASE = "https://aiautocropper.com";
    private static final Map<String, String> PAGES = new HashMap<>();
    static {
        PAGES.put("pricing", "/pricing");
        PAGES.put("blog", "/blog");
    }
    private Urls() {}
    public static String homeUrl() { return BASE + "/"; }
    public static String pageUrl(String name) {
        String path = PAGES.get(name);
        if (path == null) throw new IllegalArgumentException("unknown page: " + name);
        return BASE + path;
    }

    public static String workflowUrl(String slug) {
        if (!java.util.Set.of("crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images").contains(slug)) {
            throw new IllegalArgumentException("unknown workflow_url: " + slug);
        }
        return BASE + "/" + slug + "";
    }
}
