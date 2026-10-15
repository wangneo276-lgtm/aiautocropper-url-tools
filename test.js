import test from 'node:test';
import assert from 'node:assert/strict';
import { homeUrl, metadata, pageUrl, workflowUrl } from './index.js';

test('metadata points at the live site', () => {
  const data = metadata();
  assert.equal(data.name, "AI Auto Cropper");
  assert.equal(data.homepage, "https://aiautocropper.com/");
  assert.equal(data.homepage.includes(' '), false);
});

test('page pricing', () => {
  assert.equal(pageUrl("pricing"), "https://aiautocropper.com/pricing");
});

test('page blog', () => {
  assert.equal(pageUrl("blog"), "https://aiautocropper.com/blog");
});

test('unknown page', () => {
  assert.throws(() => pageUrl('not-a-page'), /unknown page/);
});

test('workflowUrl', () => {
  assert.equal(workflowUrl("crop-scanned-photos"), "https://aiautocropper.com/crop-scanned-photos");
  assert.equal(workflowUrl("split-multiple-photos-from-scan"), "https://aiautocropper.com/split-multiple-photos-from-scan");
  assert.equal(workflowUrl("crop-photo-album-pages"), "https://aiautocropper.com/crop-photo-album-pages");
  assert.equal(workflowUrl("auto-crop-photos"), "https://aiautocropper.com/auto-crop-photos");
  assert.equal(workflowUrl("batch-crop-images"), "https://aiautocropper.com/batch-crop-images");
  assert.throws(() => workflowUrl('not-listed'), /unknown workflow/);
});
