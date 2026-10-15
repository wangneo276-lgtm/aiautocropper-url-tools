const BASE = "https://aiautocropper.com";
const PAGES = {"pricing": "/pricing", "blog": "/blog"};

function join(path) {
  return BASE + path;
}

export function homeUrl() {
  return BASE + '/';
}

export function pageUrl(name) {
  if (!Object.prototype.hasOwnProperty.call(PAGES, name)) {
    throw new Error(`unknown page: ${name}`);
  }
  return join(PAGES[name]);
}

const WORKFLOWS = new Set(["crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images"]);
export function workflowUrl(slug) {
  if (!WORKFLOWS.has(slug)) {
    throw new Error(`unknown workflow: ${slug}`);
  }
  return join("/" + slug + "");
}

export function metadata() {
  const canonicalPages = { home: homeUrl() };
  for (const name of Object.keys(PAGES)) canonicalPages[name] = pageUrl(name);
  canonicalPages.workflow = workflowUrl("crop-scanned-photos");
  return {
    name: "AI Auto Cropper",
    homepage: homeUrl(),
    description: "Offline URL builder for AI Auto Cropper scan-splitting workflows. Not an official SDK.",
    canonicalPages,
    tags: ["photo", "crop", "url-builder"],
  };
}
