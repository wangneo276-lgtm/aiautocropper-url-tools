use aiautocropper_url_tools::{home_url, metadata, page_url};
use aiautocropper_url_tools::workflow_url;

#[test]
fn metadata_has_homepage() {
    let data = metadata();
    assert!(data.iter().any(|(k, v)| *k == "name" && v == "AI Auto Cropper"));
    assert!(data.iter().any(|(k, v)| *k == "homepage" && v == "https://aiautocropper.com/"));
}

#[test]
fn pages_match() {
    assert_eq!(page_url("pricing").unwrap(), "https://aiautocropper.com/pricing");
    assert_eq!(page_url("blog").unwrap(), "https://aiautocropper.com/blog");
    assert!(page_url("not-a-page").is_err());
}

#[test]
fn workflow_url_matches() {
    assert_eq!(workflow_url("crop-scanned-photos").unwrap(), "https://aiautocropper.com/crop-scanned-photos");
    assert_eq!(workflow_url("split-multiple-photos-from-scan").unwrap(), "https://aiautocropper.com/split-multiple-photos-from-scan");
    assert_eq!(workflow_url("crop-photo-album-pages").unwrap(), "https://aiautocropper.com/crop-photo-album-pages");
    assert_eq!(workflow_url("auto-crop-photos").unwrap(), "https://aiautocropper.com/auto-crop-photos");
    assert_eq!(workflow_url("batch-crop-images").unwrap(), "https://aiautocropper.com/batch-crop-images");
    assert!(workflow_url("not-listed").is_err());
}
