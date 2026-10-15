use strict;
use warnings;
use Test::More tests => 2;
use lib 'lib';
use AiAutoCropper::UrlTools;
is(AiAutoCropper::UrlTools::home_url(), 'https://aiautocropper.com/', 'home');
is(AiAutoCropper::UrlTools::workflow_url('crop-scanned-photos'), 'https://aiautocropper.com/crop-scanned-photos', 'extra');
