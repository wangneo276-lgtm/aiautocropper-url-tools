import unittest
from aiautocropper_url_tools import home_url, metadata, page_url
from aiautocropper_url_tools import workflow_url

class UrlTests(unittest.TestCase):
    def test_metadata(self):
        data = metadata()
        self.assertEqual(data["name"], "AI Auto Cropper")
        self.assertTrue(data["homepage"].startswith("https://"))
        self.assertEqual(data["homepage"], "https://aiautocropper.com/")
        self.assertNotIn(' ', data['homepage'])

    def test_home(self):
        self.assertEqual(home_url(), "https://aiautocropper.com/")

    def test_pages(self):
        self.assertEqual(page_url("pricing"), "https://aiautocropper.com/pricing")
        self.assertEqual(page_url("blog"), "https://aiautocropper.com/blog")

    def test_unknown_page(self):
        with self.assertRaises(ValueError):
            page_url("not-a-page")

    def test_workflow_url(self):
        self.assertEqual(workflow_url("crop-scanned-photos"), "https://aiautocropper.com/crop-scanned-photos")
        self.assertEqual(workflow_url("split-multiple-photos-from-scan"), "https://aiautocropper.com/split-multiple-photos-from-scan")
        self.assertEqual(workflow_url("crop-photo-album-pages"), "https://aiautocropper.com/crop-photo-album-pages")
        self.assertEqual(workflow_url("auto-crop-photos"), "https://aiautocropper.com/auto-crop-photos")
        self.assertEqual(workflow_url("batch-crop-images"), "https://aiautocropper.com/batch-crop-images")
        with self.assertRaises(ValueError):
            workflow_url("not-listed")

if __name__ == '__main__':
    unittest.main()
