#!/bin/sh
set -eu
base="https://aiautocropper.com"
cmd="${1:-}"
case "$cmd" in
  home)
    printf "%s\n" "$base/"
    ;;
  page)
    case "${2:-}" in
      pricing) printf '%s\n' "$base/pricing" ;;
      blog) printf '%s\n' "$base/blog" ;;
      *) echo "unknown page" >&2; exit 2 ;;
    esac
    ;;
  workflow)
    case "${2:-}" in
      crop-scanned-photos) printf '%s\n' "$base/crop-scanned-photos" ;;
      split-multiple-photos-from-scan) printf '%s\n' "$base/split-multiple-photos-from-scan" ;;
      crop-photo-album-pages) printf '%s\n' "$base/crop-photo-album-pages" ;;
      auto-crop-photos) printf '%s\n' "$base/auto-crop-photos" ;;
      batch-crop-images) printf '%s\n' "$base/batch-crop-images" ;;
      *) echo "unknown workflow" >&2; exit 2 ;;
    esac
    ;;
  *)
    echo "usage: aiautocropper-url-tools home | page <name> | workflow <slug>" >&2
    exit 2
    ;;
esac
