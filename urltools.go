package urltools

import (
    "fmt"
)

const baseURL = "https://aiautocropper.com"

func HomeURL() string {
    return baseURL + "/"
}

func PageURL(name string) (string, error) {
    pages := map[string]string{
        "pricing": "/pricing",
        "blog": "/blog",
    }
    path, ok := pages[name]
    if !ok {
        return "", fmt.Errorf("unknown page: %s", name)
    }
    return baseURL + path, nil
}

func WorkflowURL(slug string) (string, error) {
    switch slug {
    case "crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images":
        return baseURL + "/" + slug + "", nil
    default:
        return "", fmt.Errorf("unknown workflow: %s", slug)
    }
}

func Metadata() map[string]string {
    return map[string]string{
        "name":        "AI Auto Cropper",
        "homepage":    HomeURL(),
        "description": "Offline URL builder for AI Auto Cropper scan-splitting workflows. Not an official SDK.",
    }
}
