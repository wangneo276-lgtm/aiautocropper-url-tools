local M = require 'aiautocropper_url_tools'
assert(M.home_url() == 'https://aiautocropper.com/')
assert(M.page_url('pricing') == 'https://aiautocropper.com/pricing')
assert(M.workflow_url('crop-scanned-photos') == 'https://aiautocropper.com/crop-scanned-photos')
print('ok')
