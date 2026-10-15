const BASE: &str = "https://aiautocropper.com";

fn join(path: &str) -> String {
    format!("{BASE}{path}")
}

pub fn home_url() -> String {
    format!("{BASE}/")
}

pub fn page_url(name: &str) -> Result<String, &'static str> {
    let path = match name {
        "pricing" => "/pricing",
        "blog" => "/blog",
        _ => return Err("unknown page"),
    };
    Ok(join(path))
}

pub fn workflow_url(slug: &str) -> Result<String, &'static str> {
    let path = match slug {
        "crop-scanned-photos" => "/crop-scanned-photos",
        "split-multiple-photos-from-scan" => "/split-multiple-photos-from-scan",
        "crop-photo-album-pages" => "/crop-photo-album-pages",
        "auto-crop-photos" => "/auto-crop-photos",
        "batch-crop-images" => "/batch-crop-images",
        _ => return Err("unknown workflow"),
    };
    Ok(join(path))
}

pub fn metadata() -> Vec<(&'static str, String)> {
    vec![
        ("name", "AI Auto Cropper".to_string()),
        ("homepage", home_url()),
        ("description", "Offline URL builder for AI Auto Cropper scan-splitting workflows. Not an official SDK.".to_string()),
    ]
}
