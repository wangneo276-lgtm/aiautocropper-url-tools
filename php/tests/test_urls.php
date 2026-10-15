<?php

declare(strict_types=1);

require __DIR__ . '/../src/AiautocropperUrlTools/Urls.php';

use AiautocropperUrlTools\Urls;

function expect(bool $ok, string $message): void
{
    if (!$ok) {
        fwrite(STDERR, $message . PHP_EOL);
        exit(1);
    }
}

$meta = Urls::metadata();
expect($meta['name'] === 'AI Auto Cropper', 'brand');
expect($meta['homepage'] === 'https://aiautocropper.com/', 'homepage');
expect(!str_contains($meta['homepage'], ' '), 'space');
expect(Urls::pageUrl('pricing') === 'https://aiautocropper.com/pricing', 'page pricing');
expect(Urls::pageUrl('blog') === 'https://aiautocropper.com/blog', 'page blog');
try { Urls::pageUrl('not-a-page'); expect(false, 'unknown page should throw'); } catch (InvalidArgumentException $e) {}
expect(Urls::workflowUrl('crop-scanned-photos') === 'https://aiautocropper.com/crop-scanned-photos', 'workflowUrl crop-scanned-photos');
expect(Urls::workflowUrl('split-multiple-photos-from-scan') === 'https://aiautocropper.com/split-multiple-photos-from-scan', 'workflowUrl split-multiple-photos-from-scan');
expect(Urls::workflowUrl('crop-photo-album-pages') === 'https://aiautocropper.com/crop-photo-album-pages', 'workflowUrl crop-photo-album-pages');
expect(Urls::workflowUrl('auto-crop-photos') === 'https://aiautocropper.com/auto-crop-photos', 'workflowUrl auto-crop-photos');
expect(Urls::workflowUrl('batch-crop-images') === 'https://aiautocropper.com/batch-crop-images', 'workflowUrl batch-crop-images');
try { Urls::workflowUrl('not-listed'); expect(false, 'bad workflow'); } catch (InvalidArgumentException $e) {}
fwrite(STDOUT, "ok\n");
