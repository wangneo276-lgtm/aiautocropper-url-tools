package pro.aiautocropper;
public final class UrlsTest {
    public static void main(String[] args) {
        if (!Urls.homeUrl().equals("https://aiautocropper.com/")) throw new AssertionError("home");
        if (!Urls.pageUrl("pricing").equals("https://aiautocropper.com/pricing")) throw new AssertionError("page");
if (!Urls.workflowUrl("crop-scanned-photos").equals("https://aiautocropper.com/crop-scanned-photos")) throw new AssertionError("extra");
        System.out.println("ok");
    }
}
