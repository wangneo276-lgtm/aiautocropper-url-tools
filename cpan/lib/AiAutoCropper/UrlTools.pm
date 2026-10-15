package AiAutoCropper::UrlTools;
use strict;
use warnings;
our $VERSION = '0.1.1';
my $BASE = 'https://aiautocropper.com';
my %PAGES = (
        'pricing' => '/pricing',
        'blog' => '/blog',
);

sub home_url { return $BASE . '/'; }

sub page_url {
    my ($name) = @_;
    die "unknown page: $name" unless exists $PAGES{$name // ''};
    return $BASE . $PAGES{$name};
}

sub workflow_url {
    my ($slug) = @_;
    my %allowed = map { $_ => 1 } ('crop-scanned-photos', 'split-multiple-photos-from-scan', 'crop-photo-album-pages', 'auto-crop-photos', 'batch-crop-images');
    die "unknown workflow_url: $slug" unless $allowed{$slug // ''};
    return $BASE . '/' . $slug . '';
}
1;
