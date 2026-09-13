-- https://wiki.hypr.land/nvidia/#environment-variables
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- https://wiki.hypr.land/nvidia/#va-api-hardware-video-acceleration
hl.env("NVD_BACKEND", "direct")

-- https://wiki.hypr.land/nvidia/#flickering-in-electron--cef-apps
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

-- ???
-- hl.env("OGL_DEDICATED_HW_STATE_PER_CONTEXT", "ENABLE_ROBUST")
