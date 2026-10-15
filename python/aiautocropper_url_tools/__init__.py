from __future__ import annotations

_BASE = "https://aiautocropper.com"
_BRAND = "AI Auto Cropper"
_DESCRIPTION = "Offline URL builder for AI Auto Cropper scan-splitting workflows. Not an official SDK."
_TAGS = ["photo", "crop", "url-builder"]
_PAGES = {
    "pricing": "/pricing",
    "blog": "/blog"
}

_WORKFLOWS = ["crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images"]

def _join(path: str) -> str:
    return _BASE + path

def home_url() -> str:
    return _BASE + "/"

def page_url(name: str) -> str:
    try:
        path = _PAGES[name]
    except KeyError:
        raise ValueError(f"unknown page: {name}") from None
    return _join(path)

def workflow_url(slug: str) -> str:
    if slug not in _WORKFLOWS:
        raise ValueError(f"unknown workflow: {slug}")
    return _join("/" + slug + "")

def metadata() -> dict[str, object]:
    pages = {'home': home_url()}
    for name in _PAGES:
        pages[name] = page_url(name)
    pages.update({
        "workflow": workflow_url("crop-scanned-photos"),
    })
    return {
        "name": _BRAND,
        "homepage": home_url(),
        "description": _DESCRIPTION,
        "canonicalPages": pages,
        "tags": list(_TAGS),
    }
