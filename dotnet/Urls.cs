using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace AiAutoCropper.UrlTools;

public static partial class Urls
{
    public const string Base = "https://aiautocropper.com";
    private static readonly Dictionary<string, string> Pages = new()
    {
        { "pricing", "/pricing" },
        { "blog", "/blog" },
    };

    public static string HomeUrl() => Base + "/";

    public static string PageUrl(string name)
    {
        if (!Pages.TryGetValue(name, out var path))
            throw new ArgumentException("unknown page: " + name);
        return Base + path;
    }

    public static string WorkflowUrl(string slug)
    {
        string[] allowed = new[] { "crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images" };
        if (Array.IndexOf(allowed, slug) < 0)
            throw new ArgumentException("unknown workflow_url: " + slug);
        return Base + "/" + slug + "";
    }
}
