const BASE = "https://aiautocropper.com";
const PAGES: Record<string, string> = { "pricing": "/pricing", "blog": "/blog" };
export function homeUrl(): string { return BASE + "/"; }
export function pageUrl(name: string): string {
  const path = PAGES[name];
  if (!path) throw new Error("unknown page: " + name);
  return BASE + path;
}

export function workflowUrl(slug: string): string {
  const allowed = ["crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images"];
  if (!allowed.includes(slug)) throw new Error("unknown workflow_url: " + slug);
  return BASE + "/" + slug + "";
}
