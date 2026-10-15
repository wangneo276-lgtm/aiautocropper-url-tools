package urltools

import "testing"

func TestMetadata(t *testing.T) {
    data := Metadata()
    if data["name"] != "AI Auto Cropper" {
        t.Fatalf("brand %s", data["name"])
    }
    if data["homepage"] != "https://aiautocropper.com/" {
        t.Fatalf("homepage %s", data["homepage"])
    }
}

func TestPages(t *testing.T) {
    {
        got, err := PageURL("pricing")
        if err != nil { t.Fatal(err) }
        if got != "https://aiautocropper.com/pricing" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("blog")
        if err != nil { t.Fatal(err) }
        if got != "https://aiautocropper.com/blog" { t.Fatalf("%s", got) }
    }
    if _, err := PageURL("not-a-page"); err == nil { t.Fatal("expected error") }
}

func TestWorkflowURL(t *testing.T) {
    {
        got, err := WorkflowURL("crop-scanned-photos")
        if err != nil { t.Fatal(err) }
        if got != "https://aiautocropper.com/crop-scanned-photos" { t.Fatalf("%s", got) }
    }
    {
        got, err := WorkflowURL("split-multiple-photos-from-scan")
        if err != nil { t.Fatal(err) }
        if got != "https://aiautocropper.com/split-multiple-photos-from-scan" { t.Fatalf("%s", got) }
    }
    {
        got, err := WorkflowURL("crop-photo-album-pages")
        if err != nil { t.Fatal(err) }
        if got != "https://aiautocropper.com/crop-photo-album-pages" { t.Fatalf("%s", got) }
    }
    {
        got, err := WorkflowURL("auto-crop-photos")
        if err != nil { t.Fatal(err) }
        if got != "https://aiautocropper.com/auto-crop-photos" { t.Fatalf("%s", got) }
    }
    {
        got, err := WorkflowURL("batch-crop-images")
        if err != nil { t.Fatal(err) }
        if got != "https://aiautocropper.com/batch-crop-images" { t.Fatalf("%s", got) }
    }
    if _, err := WorkflowURL("not-listed"); err == nil { t.Fatal("expected error") }
}
