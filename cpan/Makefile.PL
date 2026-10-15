use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'AiAutoCropper::UrlTools',
    VERSION_FROM => 'lib/AiAutoCropper/UrlTools.pm',
    ABSTRACT => 'Offline URL helpers for AI Auto Cropper',
    AUTHOR => 'bbwdadfg',
    LICENSE => 'mit',
    META_MERGE => { resources => { homepage => 'https://aiautocropper.com/', repository => 'https://github.com/wangneo276-lgtm/aiautocropper-url-tools' } },
);
