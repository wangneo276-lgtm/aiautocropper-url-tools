# aiautocropper-url-tools

`aiautocropper-url-tools` builds canonical HTTPS URLs for [AI Auto Cropper](https://aiautocropper.com/).

Offline URL builder for AI Auto Cropper scan-splitting workflows. Not an official SDK.

The helper only concatenates known page slugs. It does not call the site, upload files, or sign in.

## JavaScript

```js
import { pageUrl, pageUrl, workflowUrl } from 'aiautocropper-url-tools';

pageUrl('pricing'); // https://aiautocropper.com/pricing
pageUrl('blog'); // https://aiautocropper.com/blog
workflowUrl('crop-scanned-photos'); // https://aiautocropper.com/crop-scanned-photos
```

## Python

```python
from aiautocropper_url_tools import page_url, page_url, workflow_url

page_url('pricing')  # https://aiautocropper.com/pricing
page_url('blog')  # https://aiautocropper.com/blog
workflow_url('crop-scanned-photos')  # https://aiautocropper.com/crop-scanned-photos
```

The repository also contains equivalent Rust, PHP, and Go helpers, plus a small command that prints the same URLs.

Source: https://github.com/bbwdadfg/aiautocropper-url-tools

License: MIT.
