<?php

declare(strict_types=1);

namespace AiautocropperUrlTools;

final class Urls
{
    private const BASE = 'https://aiautocropper.com';

    /** @return array<string, mixed> */
    public static function metadata(): array
    {
        return [
            'name' => 'AI Auto Cropper',
            'homepage' => self::homeUrl(),
            'description' => 'Offline URL builder for AI Auto Cropper scan-splitting workflows. Not an official SDK.',
            'canonicalPages' => array_merge(
                ['home' => self::homeUrl()],
                [
                    'pricing' => self::pageUrl('pricing'),
                    'blog' => self::pageUrl('blog'),
                ],
            ),
            'tags' => ['photo', 'crop', 'url-builder'],
        ];
    }

    public static function homeUrl(): string
    {
        return self::BASE . '/';
    }

    public static function pageUrl(string $name): string
    {
        $pages = [
            'pricing' => '/pricing',
            'blog' => '/blog',
        ];
        if (!array_key_exists($name, $pages)) {
            throw new \InvalidArgumentException('unknown page: ' . $name);
        }
        return self::BASE . $pages[$name];
    }

    public static function workflowUrl(string $slug): string
    {
        $allowed = ['crop-scanned-photos', 'split-multiple-photos-from-scan', 'crop-photo-album-pages', 'auto-crop-photos', 'batch-crop-images'];
        if (!in_array($slug, $allowed, true)) {
            throw new \InvalidArgumentException('unknown workflow: ' . $slug);
        }
        return self::BASE . '/' . $slug . '';
    }

}
