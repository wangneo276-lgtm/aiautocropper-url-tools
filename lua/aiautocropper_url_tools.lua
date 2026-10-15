local M = {}
local BASE = "https://aiautocropper.com"
local PAGES = { ["pricing"]="/pricing", ["blog"]="/blog" }

function M.home_url()
  return BASE .. "/"
end

function M.page_url(name)
  local path = PAGES[name]
  if not path then error("unknown page: " .. tostring(name)) end
  return BASE .. path
end

function M.workflow_url(slug)
  local allowed = { "crop-scanned-photos", "split-multiple-photos-from-scan", "crop-photo-album-pages", "auto-crop-photos", "batch-crop-images" }
  local ok = false
  for _, item in ipairs(allowed) do if item == slug then ok = true end end
  if not ok then error("unknown workflow_url: " .. tostring(slug)) end
  return BASE .. "/" .. slug .. ""
end
return M
