<!-- /qompassai/Hyprland/hypr.d/graphics/README.md -->
<!-- Qompass AI Hyprland Graphics Docs -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->
<h1 align="center">Qompass AI Hyprland Graphics Config</h1>

<div align="center" style="margin-top: 16px;">

  <a href="#aquamarine-aqconf">
    Aquamarine (aq.conf)
  </a> ·

  <a href="#electron-electronconf">
    Electron (electron.conf)
  </a> ·

  <a href="#google-googleconf">
    Google (google.conf)
  </a> ·

  <a href="#gtk-gtkconf">
    GTK (gtk.conf)
  </a> ·

  <a href="#hypr-graphics-hypr_graphicsconf">
    Hypr Graphics (hypr_graphics.conf)
  </a> ·

  <a href="#intel-intelconf">
    Intel / oneAPI (intel.conf)
  </a> ·

  <a href="#mesa-mesaconf">
    Mesa / OpenGL (mesa.conf)
  </a> ·

  <a href="#nvidia-nvidiaconf">
    NVIDIA (nvidia.conf)
  </a> ·

  <a href="#proton-protonconf">
    Proton / DXVK-NVAPI (proton.conf)
  </a> ·

  <a href="#qt-qtconf">
    Qt (qt.conf)
  </a> ·

  <a href="#sdl-sdlconf">
    SDL (sdl.conf)
  </a> ·

  <a href="#unreal-unrealconf">
    Unreal Engine (unreal.conf)
  </a> ·

  <a href="#vulkan-vulkanconf">
    Vulkan (vulkan.conf)
  </a> ·

  <a href="#x11-x11conf">
    X11 / Xwayland (x11.conf)
  </a>

</div>

<div style="background: #f8f9fa; padding: 15px; border-radius: 5px; margin-top: 10px; font-family: monospace;">
  <table>
    <thead>
      <tr>
        <th style="text-align:center;">Config File</th>
        <th style="text-align:center;">Purpose</th>
        <th style="text-align:center;">Key Areas</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>aq.conf</td>
        <td>Aquamarine(AQ) renderer + multi‑GPU routing for Hyprland</td>
        <td>AQ_DRM_DEVICES, AQ_RENDER_BACKEND, AQ_MGPU_NO_EXPLICIT</td>
      </tr>
      <tr>
        <td>electron.conf</td>
        <td>Electron apps on Wayland with Ozone + IME support</td>
        <td>ELECTRON_ENABLE_WAYLAND, ELECTRON_FLAGS, Ozone platform hints</td>
      </tr>
      <tr>
        <td>google.conf</td>
        <td>TensorFlow / Google ML threading and logging</td>
        <td>TF_* threading, logging, oneDNN toggles</td>
      </tr>
      <tr>
        <td>gtk.conf</td>
        <td>Gnome ToolKit (GTK) 2/3/4 graphics backend</td>
        <td>GDK_BACKEND, GSK_RENDERER, GTK_THEME, GTK_IM_MODULE</td>
      </tr>
      <tr>
        <td>hypr_graphics.conf</td>
        <td>Global Hyprland graphics + browser/toolkit Wayland flags</td>
        <td>CLUTTER_BACKEND, MOZ_ENABLE_WAYLAND, GBM/EGL, WEBKIT_FORCE_WAYLAND</td>
      </tr>
      <tr>
        <td>intel.conf</td>
        <td>Intel GPU / oneAPI SYCL runtime tuning</td>
        <td>ONEAPI_DEVICE_SELECTOR, SYCL_* cache, Level Zero + CUDA/HIP knobs</td>
      </tr>
      <tr>
        <td>mesa.conf</td>
        <td>Mesa OpenGL / Vulkan drivers, shader cache, video accel</td>
        <td>MESA_* cache + drivers, LIBVA/VDPAU, Rusticl OpenCL, Zink settings</td>
      </tr>
      <tr>
        <td>nvidia.conf</td>
        <td>NVIDIA GBM backend, VRR, OpenGL/Vulkan behavior</td>
        <td>GBM_BACKEND, performance flags, CUDA_VISIBLE_DEVICES, NVD_BACKEND</td>
      </tr>
      <tr>
        <td>proton.conf</td>
        <td>Proton / DXVK‑NVAPI / DLSS / Reflex for games</td>
        <td>DXVK_NVAPI_*, PROTON_ENABLE_*, NGX / DLSS overrides</td>
      </tr>
      <tr>
        <td>qt.conf</td>
        <td>Qt 6 high‑DPI and Wayland graphics configuration</td>
        <td>QT_QPA_PLATFORM, QT_SCALE_FACTOR, QT_WAYLAND_DISABLE_WINDOWDECORATION, QML_IMPORT_PATH</td>
      </tr>
      <tr>
        <td>sdl.conf</td>
        <td>SDL 3 audio/video backends and rendering under Wayland</td>
        <td>SDL_VIDEODRIVER, SDL_AUDIO_DRIVER, SDL_RENDER_DRIVER, Wayland / KMSDRM options</td>
      </tr>
      <tr>
        <td>unreal.conf</td>
        <td>Unreal Engine Wayland forcing</td>
        <td>UNREAL_FORCE_WAYLAND</td>
      </tr>
      <tr>
        <td>vulkan.conf</td>
        <td>Vulkan loader, WSI, and toolkit Vulkan integration</td>
        <td>MESA_VK_WSI_LIST, VK_PRESENT_MODE, VK_WSI_MODE, Qt/SDL Vulkan hints</td>
      </tr>
      <tr>
        <td>x11.conf</td>
        <td>Xwayland compatibility and legacy X11 behavior</td>
        <td>WLR_EGL_NO_X11, XWAYLAND_NO_GLAMOR, xwayland{…} block</td>
      </tr>
    </tbody>
  </table>
</div>

---

<h2 id="aquamarine-aqconf">Aquamarine (aq.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #339af0; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Aquamarine (aq.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #f1f5ff; border-left: 6px solid #339af0; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>AQ_DRM_DEVICES</code> – colon‑separated list of DRM nodes in priority order (e.g. <code>/dev/dri/card2:/dev/dri/card1</code> or <code>/dev/dri/by-path/…</code>).</li>
  <li><code>AQ_MGPU_NO_EXPLICIT</code> – disable explicit multi‑GPU management (<code>0</code> / <code>1</code>).</li>
  <li><code>AQ_NO_MODIFIERS</code> – disable dma‑buf modifiers if set (<code>0</code> / <code>1</code>).</li>
  <li><code>AQ_RENDER_BACKEND</code> – Aquamarine renderer (<code>gl</code>, potentially others as backends evolve).</li>
</ul>
</blockquote>
</details>


<h2 id="electron-electronconf">Electron (electron.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #845ef7; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Electron (electron.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #f3f0ff; border-left: 6px solid #845ef7; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>ELECTRON_ENABLE_LOGGING</code> – enable Chromium/Electron logging (<code>0</code> / <code>1</code>).</li>
  <li><code>ELECTRON_ENABLE_WAYLAND</code> – prefer Wayland compositor integration (<code>0</code> / <code>1</code>).</li>
  <li><code>ELECTRON_FLAGS</code> – extra Chromium flags (e.g. IME and text‑input version arguments).</li>
  <li><code>ELECTRON_OZONE_PLATFORM</code> – Ozone backend (<code>wayland</code>, <code>x11</code>).</li>
  <li><code>ELECTRON_ENABLE_FEATURES</code> – Chromium feature list (comma‑separated flags like <code>UseOzonePlatform</code>).</li>
  <li><code>ELECTRON_OZONE_PLATFORM_HINT</code> – hint for Ozone platform selection; typically <code>auto</code> or <code>wayland</code> (ignored on newer Electron but harmless).[web:81]</li>
</ul>
</blockquote>
</details>

<h2 id="google-googleconf">Google (google.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #ff6b6b; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Google / TensorFlow (google.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #fff5f5; border-left: 6px solid #ff6b6b; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>ANGLE_CAPTURE_SERIALIZE_STATE</code> – enable ANGLE state capture (<code>0</code> / <code>1</code>).</li>
  <li><code>TENSORFLOW_DELEGATE</code> – delegate backend (<code>none</code>, platform‑specific delegate names).</li>
  <li><code>TF_CPP_MIN_LOG_LEVEL</code> – log level (<code>0</code>=all, <code>1</code>=INFO, <code>2</code>=WARNING, <code>3</code>=ERROR).</li>
  <li><code>TF_ENABLE_ONEDNN_OPTS</code> – enable oneDNN optimizations (<code>0</code> / <code>1</code>).</li>
  <li><code>TF_INTRA_OP_PARALLELISM_THREADS</code> – per‑op parallel threads (integer).</li>
  <li><code>TF_INTER_OP_PARALLELISM_THREADS</code> – inter‑op parallel threads (integer).</li>
</ul>
</blockquote>
</details>

<h2 id="gtk-gtkconf">GTK (gtk.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #51cf66; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>GTK (gtk.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #ebfbee; border-left: 6px solid #51cf66; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>GDK_BACKEND</code> – ordered list of backends (e.g. <code>wayland,x11,*</code>); valid names include <code>wayland</code>, <code>x11</code>, <code>broadway</code>, etc.[web:71][web:82]</li>
  <li><code>GDK_PIXBUF_MODULE_FILE</code> – path to GdkPixbuf loaders cache file.</li>
  <li><code>GDK_RENDERING</code> – GTK 3 rendering mode (e.g. <code>similar</code> or <code>image</code>).[web:72]</li>
  <li><code>GDK_SCALE</code> – integer scaling factor for GTK (e.g. <code>1</code>, <code>2</code>).[web:72]</li>
  <li><code>GSK_CACHE_TIMEOUT</code> – GTK 4 scene graph cache timeout in seconds.</li>
  <li><code>GSK_RENDERER</code> – GTK 4 renderer (<code>vulkan</code>, <code>gl</code>, <code>cairo</code> depending on build).[web:74]</li>
  <li><code>GTK_APPLICATION_PREFERS_NON_DEFAULT_THEME</code> – whether apps prefer system theme (<code>0</code> / <code>1</code>).[web:72]</li>
  <li><code>GTK_CSD</code> – client‑side decorations (<code>0</code> / <code>1</code>).</li>
  <li><code>GTK_IM_MODULE</code> – IM module name (<code>fcitx5</code>, <code>ibus</code>, etc.).[web:72]</li>
  <li><code>GTK_MEDIA</code> – GTK 4 media backend (e.g. <code>gstreamer</code>).[web:74]</li>
  <li><code>GTK_THEME</code> – GTK theme (e.g. <code>Adwaita:dark</code>).</li>
  <li><code>GTK_USE_PORTAL</code> – use XDG portals where possible (<code>0</code> / <code>1</code>).[web:72]</li>
  <li><code>GTK_VIDEOSINK</code> – video sink element for GTK media (<code>waylandsink</code>, <code>xvimagesink</code>, etc.).</li>
  <li><code>XDG_DATA_DIRS</code> – search path for data files (colon‑separated directories).</li>
  <li><em>Commented options like <code>GDK_DISABLE</code>, <code>GDK_GL_DISABLE</code>, <code>GDK_WAYLAND_DISABLE</code>, <code>GSK_GPU_DISABLE</code> selectively disable features for debugging.</em></li>
</ul>
</blockquote>
</details>


<h2 id="hypr-graphics-hypr_graphicsconf">Hypr Graphics (hypr_graphics.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #fcc419; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Hypr Graphics (hypr_graphics.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #fff9db; border-left: 6px solid #fcc419; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>CLUTTER_BACKEND</code> – Clutter backend (<code>wayland</code>, <code>x11</code>).</li>
  <li><code>DISCORD_ENABLE_WAYLAND</code> – enable Discord Wayland mode (<code>0</code> / <code>1</code>).</li>
  <li><code>EGL_PLATFORM</code> – EGL platform hint (<code>wayland</code>, <code>x11</code>, <code>drm</code>, etc.).[web:76]</li>
  <li><code>GST_PLUGIN_PATH</code> – additional GStreamer plugin directories.</li>
  <li><code>HYPRCURSOR_FORCE_SOFTWARE</code> – force software cursor rendering (<code>0</code> / <code>1</code>).</li>
  <li><code>HYPRCURSOR_THEME</code> – cursor theme name.</li>
  <li><code>HYPRCURSOR_SIZE</code> – cursor size in pixels.</li>
  <li><code>MOZ_DBUS_REMOTE</code> – enable Firefox/Thunderbird remote via D‑Bus (<code>0</code> / <code>1</code>).</li>
  <li><code>MOZ_ENABLE_WAYLAND</code> – enable Wayland backend in Mozilla apps (<code>0</code> / <code>1</code>).[web:46]</li>
  <li><code>MOZ_WEBRENDER</code> – enable WebRender compositor (<code>0</code> / <code>1</code>).</li>
  <li><code>NIXOS_OZONE_WL</code> – hint for Ozone Wayland usage in NixOS environments (<code>0</code> / <code>1</code>).</li>
  <li><code>OZONE_PLATFORM</code> – global Ozone platform (<code>auto</code>, <code>wayland</code>, <code>x11</code>).</li>
  <li><code>WEBKIT_FORCE_WAYLAND</code> – prefer Wayland backend in WebKit‑GTK (<code>0</code> / <code>1</code>).</li>
  <li><code>WEBVIEW_FORCE_WAYLAND</code> – similar, for webview wrappers (<code>0</code> / <code>1</code>).</li>
  <li><em>Commented <code>WLR_*</code> options can pin DRM devices, renderer, and software allowance for wlroots.</em></li>
</ul>
</blockquote>
</details>

<h2 id="intel-intelconf">Intel / oneAPI (intel.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #228be6; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Intel / oneAPI (intel.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #e7f5ff; border-left: 6px solid #228be6; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>ONEAPI_DEVICE_SELECTOR</code> – complex selector for SYCL/oneAPI devices (e.g. <code>level_zero:gpu;!*:cpu;!llvmpipe:*</code>); supports backend and device type filters.[web:79]</li>
  <li><code>SYCL_CACHE_DIR</code> – directory for JIT/cache artifacts.</li>
  <li><code>SYCL_CACHE_IN_MEM</code> – enable in‑memory cache (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_CACHE_MAX_DEVICE_IMAGE_SIZE</code>, <code>SYCL_CACHE_MIN_DEVICE_IMAGE_SIZE</code>, <code>SYCL_CACHE_MAX_SIZE</code>, <code>SYCL_CACHE_THRESHOLD</code> – cache size and thresholds (integers in bytes or MB‑ish units, per docs).[web:79]</li>
  <li><code>SYCL_CACHE_PERSISTENT</code> – keep cache across runs (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_DISABLE_EXECUTION_GRAPH_CLEANUP</code> – keep execution graphs (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_DISABLE_PARALLEL_FOR_RANGE_ROUNDING</code> – disable rounding optimizations (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_DUMP_IMAGES</code> – dump device images for debugging (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_EAGER_INIT</code> – pre‑initialize backends (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_HOST_UNIFIED_MEMORY</code> – enable host unified memory (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_IN_MEM_CACHE_EVICTION_THRESHOLD</code> – eviction threshold in bytes.</li>
  <li><code>SYCL_JIT_AMDGCN_PTX_KERNELS</code> – enable JIT for AMDGCN/PTX kernels (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_PARALLEL_FOR_RANGE_ROUNDING_TRACE</code> – trace range rounding (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_PI_HIP_MAX_LOCAL_MEM_SIZE</code>, <code>SYCL_PI_CUDA_MAX_LOCAL_MEM_SIZE</code> – max local mem for HIP/CUDA backends (bytes).</li>
  <li><code>SYCL_PI_LEVEL_ZERO_*</code> – various Level Zero tuning knobs (batch size, cleanup thresholds, copy engine usage, USM behavior, etc.).</li>
  <li><code>SYCL_PRINT_EXECUTION_GRAPH</code> – when to print graphs (<code>never</code>, <code>on_error</code>, <code>always</code>).</li>
  <li><code>SYCL_PROGRAM_*_OPTIONS</code> – append or override compile/link options for device programs.</li>
  <li><code>SYCL_QUEUE_THREAD_POOL_SIZE</code> – size of SYCL queue thread pool (integer).</li>
  <li><code>SYCL_REDUCTION_PREFERRED_WORKGROUP_SIZE</code> – hint like <code>gpu:128</code> for reduction kernels.</li>
  <li><code>SYCL_UR_USE_LEVEL_ZERO_V2</code> – opt‑in to newer Level Zero UR (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_USM_HOSTPTR_IMPORT</code> – enable host pointer import (<code>0</code> / <code>1</code>).</li>
  <li><code>SYCL_UR_CUDA_ENABLE_IMAGE_SUPPORT</code> – enable CUDA image support (<code>0</code> / <code>1</code>).</li>
</ul>
</blockquote>
</details>

<h2 id="mesa-mesaconf">Mesa / OpenGL (mesa.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #fd7e14; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Mesa (mesa.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #fff4e6; border-left: 6px solid #fd7e14; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>EGL_DRIVER</code> – Mesa EGL driver (e.g. <code>iris</code>, <code>radeonsi</code>, <code>zink</code>).[web:32]</li>
  <li><code>EGL_PLATFORM</code> – platform for EGL (<code>wayland</code>, <code>x11</code>, <code>surfaceless</code>, etc.).[web:76]</li>
  <li><code>GST_VAAPI_ALL_DRIVERS</code> – VAAPI driver discovery for GStreamer (<code>0</code> / <code>1</code>).</li>
  <li><code>LIBGL_ALWAYS_SOFTWARE</code> – force software GL if <code>1</code>; GPU if <code>0</code>.[web:32]</li>
  <li><code>LIBVA_DRIVERS_PATH</code> – search path for VA‑API drivers.</li>
  <li><code>LP_NUM_THREADS</code> – number of llvmpipe threads (integer).[web:32]</li>
  <li><code>MESA_DISK_CACHE_DATABASE</code>, <code>MESA_DISK_CACHE_SINGLE_FILE</code>, <code>MESA_DISK_CACHE_MULTI_FILE</code> – choose cache backend layout (<code>0</code> / <code>1</code>).[web:32]</li>
  <li><code>MESA_GLSL_CACHE_ENABLE</code> – enable GLSL shader cache (<code>true</code> / <code>false</code>).[web:32]</li>
  <li><code>MESA_GLSL_CACHE_DIR</code>, <code>MESA_SHADER_CACHE_DIR</code> – directories for caches.</li>
  <li><code>MESA_GLSL_CACHE_MAX_SIZE</code>, <code>MESA_SHADER_CACHE_MAX_SIZE</code> – max cache size (e.g. <code>32G</code>).[web:32]</li>
  <li><code>MESA_LOADER_DRIVER_OVERRIDE</code> – override Mesa driver name (e.g. <code>iris</code>, <code>zink</code>).[web:32]</li>
  <li><code>MESA_NO_ERROR</code> – disable error checking for perf (<code>0</code> / <code>1</code>).[web:32]</li>
  <li><code>OCL_ICD_VENDORS</code> – path to OpenCL ICD vendor file (Rusticl here).[web:32]</li>
  <li><code>OPENCV_OPENCL_DEVICE</code> – selects OpenCV OpenCL device (e.g. <code>NVIDIA CUDA:GPU:0</code>).</li>
  <li><code>RUSTICL_DEVICE_TYPE</code> – Rusticl device type (<code>gpu</code>, <code>cpu</code>, etc.).[web:32]</li>
  <li><code>RUSTICL_ENABLE</code> – list of drivers to enable (e.g. <code>iris,llvmpipe</code>).[web:32]</li>
  <li><code>RUSTICL_FEATURES</code> – features like <code>fp16</code>, <code>fp64</code>, <code>intel</code>.[web:32]</li>
  <li><code>RUSTICL_MAX_WORK_GROUPS</code> – max work‑groups hint.</li>
  <li><code>VAAPI_COMPAT</code>, <code>VAAPI_MPEG4_ENABLED</code> – VAAPI compatibility and codec support toggles.</li>
  <li><code>VDPAU_DRIVER</code> – VDPAU driver name (e.g. <code>va_gl</code>, <code>nvidia</code>).</li>
  <li><code>ZINK_BATCH_COUNT</code> – batch count for Zink driver.</li>
  <li><code>ZINK_SHADER_CACHE_DIR</code> – directory for Zink shader cache.</li>
</ul>
</blockquote>
</details>

<h2 id="nvidia-nvidiaconf">NVIDIA (nvidia.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #e03131; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>NVIDIA (nvidia.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #fff5f5; border-left: 6px solid #e03131; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>CUDA_VISIBLE_DEVICES</code> – list of visible CUDA devices by index (e.g. <code>0,1,2</code>).</li>
  <li><code>GBM_BACKEND</code> – GBM backend library (<code>nvidia-drm</code>, <code>nvidia</code>, etc.).</li>
  <li><code>VK_LAYER_NV_optimus</code> – toggle Vulkan Optimus layer via env‑based enable flag.<br>
      (Layer JSON uses its own <code>enable_environment</code> / <code>disable_environment</code> keys; here you’re simply setting a flag consumed by that stack.)</li>
 </ul>
</blockquote>
</details>


<h2 id="proton-protonconf">Proton / DXVK-NVAPI (proton.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #15aabf; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Proton / DXVK‑NVAPI (proton.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #e3fafc; border-left: 6px solid #15aabf; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>DXVK_ENABLE_NVAPI</code> – enable DXVK‑NVAPI integration (<code>0</code> / <code>1</code>).</li>
  <li><code>DXVK_NVAPI_ALLOW_OTHER_DRIVERS</code> – allow non‑NVIDIA Vulkan drivers (<code>0</code> / <code>1</code>).</li>
  <li><code>DXVK_NVAPI_DISABLE_ENTRYPOINTS</code> – disable specific NVAPI entrypoints (comma‑separated, or empty for none).</li>
  <li><code>DXVK_NVAPI_DRIVER_VERSION</code> – spoofed driver version (integer, optional).</li>
  <li><code>DXVK_NVAPI_DRS_SETTINGS</code> – raw DRS settings, see DXVK‑NVAPI docs.</li>
  <li><code>DXVK_NVAPI_DRS_NGX_DLSS_*_OVERRIDE*</code> – override DLSS/NGX presets and modes (e.g. <code>on</code>, <code>off</code>, <code>quality</code>, <code>performance</code>).</li>
  <li><code>DXVK_NVAPI_GPU_ARCH</code> – GPU architecture string (e.g. <code>AD100</code>).</li>
  <li><code>DXVK_NVAPI_VKREFLEX_INJECT_PRESENT_FRAME_IDS</code> / <code>DXVK_NVAPI_VKREFLEX_INJECT_SUBMIT_FRAME_IDS</code> – inject specific frame IDs (<code>0</code> / <code>1</code>).</li>
<li><code>DXVK_NVAPI_VKREFLEX_LAYER_LOG_LEVEL</code> – Reflex logging level (<code>trace</code>, <code>debug</code>, <code>info</code>, etc.).</li>
<li><code>PROTON_ENABLE_NGX_UPDATER</code>, <code>PROTON_ENABLE_NVAPI</code>, <code>PROTON_ENABLE_WAYLAND</code>, <code>PROTON_USE_WAYLAND</code> – Proton feature toggles (<code>0</code> / <code>1</code>).</li>
<li><code>DXVK_NVAPI_VKREFLEX_ALLOW_FALLBACK_TO_OOB_FRAME_ID</code>, <code>DXVK_NVAPI_VKREFLEX_ALLOW_FALLBACK_TO_PRESENT_FRAME_ID</code>, <code>DXVK_NVAPI_VKREFLEX_ALLOW_FALLBACK_TO_SIMULATION_FRAME_ID</code> – control Reflex frame‑ID fallbacks (<code>0</code> / <code>1</code>).</li>
  <li><code>DXVK_NVAPI_LOG_PATH</code> – directory for DXVK‑NVAPI logs.</li>
  <li><code>DXVK_NVAPI_VKREFLEX</code> – enable Reflex layer (<code>0</code> / <code>1</code>).</li>
  <li><code>PROTON_FORCE_LARGE_ADDRESS_AWARE</code> – force LAA flag in games (<code>0</code> / <code>1</code>).</li>
  <li><code>PROTON_NO_ESYNC</code> – disable esync (<code>0</code> / <code>1</code>).</li>
  <li><code>PROTON_USE_NTDLL_HAVE_THREAD</code> – tweak NTDLL threading behavior (<code>0</code> / <code>1</code>).</li>
  <li><code>DXVK_NVAPI_DRS_NGX_DLSS_OVERRIDE_OPTIMAL_SETTINGS</code> – DLSS preset override (e.g. <code>perf_to_9x</code>).</li>
  <li><code>DXVK_NVAPI_ENABLE</code>, <code>DXVK_NVAPI_VKREFLEX</code> at bottom – additional on/off switches (<code>0</code> / <code>1</code>).</li>
</ul>
</blockquote>
</details>

<h2 id="qt-qtconf">Qt (qt.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #7048e8; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Qt (qt.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #f3f0ff; border-left: 6px solid #7048e8; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>QML_IMPORT_PATH</code>, <code>QML2_IMPORT_PATH</code> – search paths for QML modules (colon‑separated directories).</li>
  <li><code>QT_AUTO_SCREEN_SCALE_FACTOR</code> – enable auto DPI scaling (<code>0</code> / <code>1</code>).</li>
  <li><code>QT_ENABLE_HIGHDPI_SCALING</code> – high‑DPI behavior toggle (<code>0</code> / <code>1</code>).</li>
  <li><code>QT_FONT_DPI</code> – font DPI value (integer, e.g. <code>144</code>).[web:85]</li>
  <li><code>QT_IM_MODULE</code> – IM module (<code>fcitx5</code>, <code>ibus</code>, etc.).</li>
  <li><code>QT_QPA_PLATFORM</code> – platform plugin (<code>wayland</code>, <code>wayland;xcb</code>, <code>xcb</code>).[web:82]</li>
  <li><code>QT_QPA_PLATFORMTHEME</code> – platform theme plugin (e.g. <code>hyprqt6engine</code>, <code>qt6ct</code>).</li>
  <li><code>QT_QUICK_CONTROLS_CONF</code> – path to Qt Quick Controls 2 config file.</li>
  <li><code>QT_QUICK_CONTROLS_* </code> – styling (Material / Universal themes, colors, variants, etc.).</li>
  <li><code>QT_SCALE_FACTOR</code> – global scale factor (float, e.g. <code>1.0</code>, <code>1.5</code>).[web:85]</li>
  <li><code>QT_SCALE_FACTOR_ROUNDING_POLICY</code> – rounding mode (<code>Round</code>, <code>Ceil</code>, <code>Floor</code>, <code>PassThrough</code>).[web:85]</li>
  <li><code>QT_WAYLAND_DISABLE_WINDOWDECORATION</code> – disable server‑side decorations (<code>0</code> / <code>1</code>).[web:85]</li>
  <li><code>QT_XCB_GL_INTEGRATION</code> – XCB GL integration plugin (<code>xcb_egl</code>, <code>xcb_glx</code>).</li>
  <li><em>Commented <code>QT_SCREEN_SCALE_FACTORS</code> and <code>QT_USE_PHYSICAL_DPI</code> give per‑screen and physical DPI control.</em></li>
</ul>
</blockquote>
</details>

<h2 id="sdl-sdlconf">SDL (sdl.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #4dabf7; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>SDL (sdl.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #f5f9ff; border-left: 6px solid #4dabf7; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>SDL_AUDIO_DRIVER</code> – preferred audio backend (e.g. <code>pipewire</code>, <code>pulseaudio</code>, <code>alsa</code>).</li>
  <li><code>SDL_AUDIO_FREQUENCY</code> – output sample rate in Hz, <code>0</code> = system default.</li>
  <li><code>SDL_DYNAMIC_API_ALL</code> – enable dynamic API loading (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL3_DYNAMIC_API</code> – path to <code>libSDL3.so</code> for dynamic API.</li>
  <li><code>SDL_IM_MODULE</code> – input method module (e.g. <code>fcitx5</code>, <code>ibus</code>).</li>
  <li><code>SDL_VIDEODRIVER</code> – video drivers search order (e.g. <code>wayland,x11</code>).</li>
  <li><code>SDL_VIDEO_YUV_HWACCEL</code> – enable YUV hardware accel (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_X11_DGAMOUSE</code> – DGA mouse on X11 (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_FRAMEBUFFER_ACCELERATION</code> – framebuffer accel hint (<code>0</code>=off, <code>1</code>=hint, <code>2</code>=force).</li>
  <li><code>SDL_INVALID_PARAM_CHECKS</code> – runtime argument checks (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_KEYCODE_OPTIONS</code> – keycode mapping mode (e.g. <code>scancode</code>).</li>
  <li><code>SDL_KMSDRM_ATOMIC</code> – require atomic KMS (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_KMSDRM_DEVICE_INDEX</code> – KMS/DRM card index (integer, usually <code>0</code>).</li>
  <li><code>SDL_KMSDRM_REQUIRE_DRM_MASTER</code> – require DRM master (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_LOGGING</code> – log level (<code>trace</code>, <code>debug</code>, <code>info</code>, <code>warn</code>, <code>error</code>, <code>critical</code>).</li>
  <li><code>SDL_NO_SIGNAL_HANDLERS</code> – disable SDL signal handlers (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_OPENGL_ES_DRIVER</code> – GLES driver hint (e.g. <code>default</code>).</li>
  <li><code>SDL_OPENGL_LIBRARY</code> – OpenGL library (e.g. <code>libGL.so.1</code>).</li>
  <li><code>SDL_QUIT_ON_LAST_WINDOW_CLOSE</code> – auto-quit when last window closes (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_RENDER_DRIVER</code> – renderer backend (<code>opengl</code>, <code>vulkan</code>, <code>software</code>, etc.).</li>
  <li><code>SDL_RENDER_GPU_LOW_POWER</code> – prefer low‑power GPU (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_RENDER_LINE_METHOD</code> – line rendering mode (integer, driver‑specific).</li>
  <li><code>SDL_RENDER_VSYNC</code> – vsync on/off/late (<code>0</code>, <code>1</code>, or driver‑specific values).</li>
  <li><code>SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME</code> – name used to inhibit screensaver.</li>
  <li><code>SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL</code> – force RT priority (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_THREAD_PRIORITY_POLICY</code> – thread priority policy (<code>normal</code>, <code>time_critical</code>, etc.).</li>
  <li><code>SDL_TIMER_RESOLUTION</code> – requested timer resolution in ms.</li>
  <li><code>SDL_VIDEO_ALLOW_SCREENSAVER</code> – allow screensaver during apps (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_DISPLAY_PRIORITY</code> – prefer specific display (empty or name‑based hint).</li>
  <li><code>SDL_VIDEO_DOUBLE_BUFFER</code> – double buffering hint (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS</code> – minimize on focus loss (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_OFFSCREEN_SAVE_FRAMES</code> – keep offscreen frames (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_SYNC_WINDOW_OPERATIONS</code> – sync window ops with display (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR</code> – allow libdecor decorations (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_WAYLAND_MODE_EMULATION</code> – mode emulation (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_WAYLAND_MODE_SCALING</code> – scaling mode (<code>stretch</code>, <code>center</code>, etc.).</li>
  <li><code>SDL_VIDEO_WAYLAND_PREFER_LIBDECOR</code> – prefer libdecor (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_VIDEO_WAYLAND_SCALE_TO_DISPLAY</code> – scale surface to display (<code>0</code> / <code>1</code>).</li>
  <li><code>SDL_WAVE_CHUNK_LIMIT</code> – max WAVE chunk size (bytes, <code>0</code> = unlimited).</li>
  <li><code>SDL_WAVE_FACT_CHUNK</code> – how to handle FACT chunks (<code>strict</code>, <code>ignore</code>).</li>
  <li><code>SDL_WAVE_RIFF_CHUNK_SIZE</code> – RIFF size handling (<code>strict</code>, <code>ignore</code>).</li>
  <li><code>SDL_WAVE_TRUNCATION</code> – truncated file handling (<code>strict</code>, <code>ignore</code>).</li>
</ul>
</blockquote>
</details>
<h2 id="unreal-unrealconf">Unreal Engine (unreal.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #ff922b; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Unreal Engine (unreal.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #fff4e6; border-left: 6px solid #ff922b; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>UNREAL_FORCE_WAYLAND</code> – force Unreal Engine to prefer Wayland surfaces (<code>0</code> / <code>1</code>).</li>
</ul>
</blockquote>
</details>

<h2 id="vulkan-vulkanconf">Vulkan (vulkan.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #20c997; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>Vulkan (vulkan.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #e6fcf5; border-left: 6px solid #20c997; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>DISABLE_LAYER_AMD_SWITCHABLE_GRAPHICS_1</code> – disable AMD switchable graphics layer (<code>0</code> / <code>1</code>).</li>
  <li><code>MESA_VK_WSI_LIST</code> – allowed WSI backends (e.g. <code>wayland</code>, <code>x11</code>, comma‑separated).</li>
  <li><code>QSG_RHI_BACKEND</code> – Qt scene graph backend (<code>vulkan</code>, <code>opengl</code>, <code>metal</code>, etc.).</li>
  <li><code>QT_VK_DISPLAY_INDEX</code> – display index for Qt Vulkan (integer).</li>
  <li><code>QT_VK_MODE_INDEX</code> – mode index for Qt Vulkan (integer).</li>
  <li><code>QT_VK_PHYSICAL_DEVICE_INDEX</code> – Vulkan physical device index for Qt (integer).</li>
  <li><code>SDL_VULKAN_DISPLAY</code> – SDL display index for Vulkan surfaces (integer).</li>
  <li><code>SDL_VULKAN_LIBRARY</code> – Vulkan loader library (e.g. <code>libvulkan.so.1</code>).</li>
  <li><code>VK_ADD_LAYER_PATH</code> – additional directory for Vulkan implicit layer JSONs.</li>
  <li><code>VK_KHR_PRESENT_WAIT_ENABLED</code> – enable <code>VK_KHR_present_wait</code> usage (<code>0</code> / <code>1</code>).</li>
  <li><code>VK_PRESENT_MODE</code> – preferred present mode (<code>mailbox</code>, <code>fifo</code>, <code>immediate</code>, etc.).</li>
  <li><code>VK_WSI_MODE</code> – preferred WSI integration (<code>wayland</code>, <code>xcb</code>, <code>xlib</code>).</li>
  <li><code>ANGLE_DEFAULT_PLATFORM</code> – <code>vulkan</code>, <code>opengl</code>, etc.</li>
  <li><code>ANGLE_FEATURE_OVERRIDES_ENABLED</code> – e.g. <code>prefer_vulkan</code>.</li>
  <li><code>ANGLE_PLATFORM</code> / <code>ANGLE_PLATFORM_FEATURES</code> – ANGLE backend + features.</li>
  <li><code>GDK_DISABLE</code> / <code>GDK_VULKAN_DISABLE</code> – disable specific GTK graphics features.</li>
  <li><code>VK_ICD_FILENAMES</code> – explicit driver JSONs list.</li>
  <li><code>\_\_VK_LAYER_NV_optimus</code> – e.g. <code>NVIDIA_only</code> for Optimus routing.</li>
  <li><code>VK_LAYER_PATH</code> / <code>VK_LOADER_DISABLE_LAYER_MESA</code> / <code>VK_LOADER_LAYERS_DISABLE</code> – loader layer control.</li>
  <li><code>MESA_VK_DEVICE_SELECT</code> – force specific GPU (e.g. <code>pci:10de:2820</code>).</li>
  <li><code>VK_INSTANCE_LAYERS</code> – explicit layers list (e.g. <code>VK_LAYER_MESA_device_select</code>).</li>
  </ul>
</ul>
</blockquote>
</details>


<h2 id="x11-x11conf">X11 / Xwayland (x11.conf)</h2>
<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #868e96; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;">
  <strong>X11 / Xwayland (x11.conf)</strong>
</summary>
<blockquote style="font-size: 1.0em; line-height: 1.6; padding: 20px; background: #f8f9fa; border-left: 6px solid #868e96; border-radius: 8px; margin: 15px 0;">
<ul>
  <li><code>WLR_EGL_NO_X11</code> – disable using X11 for EGL (<code>0</code> / <code>1</code>).</li>
  <li><code>WLR_X11_NO_ATOMS</code> – avoid querying X11 atoms (<code>0</code> / <code>1</code>).</li>
  <li><code>XCURSOR_SIZE</code> – cursor size in pixels (integer).</li>
  <li><code>XWAYLAND_NO_GLAMOR</code> – disable glamor acceleration in Xwayland (<code>0</code> / <code>1</code>).</li>
</ul>
<pre><code>xwayland {
    create_abstract_socket = false   # Xwayland socket in abstract namespace
    enabled                = false   # completely disable Xwayland
    force_zero_scaling     = true    # force scale 1.0 inside Xwayland
    use_nearest_neighbor   = true    # nearest-neighbor scaling for Xwayland
}
</code></pre>
</blockquote>
</details>

