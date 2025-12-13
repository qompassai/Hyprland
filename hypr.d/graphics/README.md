<!-- /qompassai/Hyprland/hypr.d/graphics/README.md -->
<!-- Qompass AI Hyprland Graphics Docs -->
<!-- Copyright (C) 2025 Qompass AI, All rights reserved -->
<!-- ---------------------------------------- -->
<h1 align="center">Qompass AI Hyprland Graphics Config</h1>

<div align="center" style="margin-top: 16px;">

  <a href="https://wiki.archlinux.org/title/Kernel_module">
    Aquamarine(aq.conf)
  </a> ·

  <a href="https://wiki.archlinux.org/title/Sound_system">
    Google(google.conf)
  </a> ·

  <a href="https://wiki.archlinux.org/title/Kernel_module#Blacklisting">
    Hyprland Graphics(hypr_graphics.conf)
  </a> ·

  <a href="https://wiki.archlinux.org/title/Thunderbolt">
    Mesa(mesa.conf)
  </a> ·

  <a href="https://wiki.archlinux.org/title/Intel_graphics">
    Proton(proton.conf)
  </a> ·

  <a href="https://wiki.archlinux.org/title/Network_configuration">
    Simple Display Layer (sdl.conf)
  </a> ·

  <a href="https://wiki.archlinux.org/title/NVIDIA">
    Nvidia(nvidia.conf)
  </a> ·

  <a href="https://wiki.archlinux.org/title/Webcam_setup">
    Electron(electron.conf)
  </a>

   <a href="https://wiki.archlinux.org/title/Webcam_setup">
    Vulkan(vulkan.conf)
  </a>




<details>
<summary style="font-size: 1.4em; font-weight: bold; padding: 15px; background: #ff6b6b; color: white; border-radius: 10px; cursor: pointer; margin: 10px 0;"><strong>Aquamarine</strong></summary>
<blockquote style="font-size: 1.2em; line-height: 1.8; padding: 25px; background: #fff5f5; border-left: 6px solid #ff6b6b; border-radius: 8px; margin: 15px 0; box-shadow: 0 2px 8px rgba(0,0,0,0.1);">
</blockquote>
</details>

</div>
  <div style="background: #f8f9fa; padding: 15px; border-radius: 5px; margin-top: 10px; font-family: monospace;">
    <table>
      <thead>
        <tr>
          <th style="text-align:center;">Config File</th>
          <th style="text-align:center;">Purpose</th>
          <th style="text-align:center;">Modules</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>aq.conf</td>
          <td>Aquamarine Renderer</td>
          <td>snd_hda_intel, snd-usb-audio</td>
        </tr>
        <tr>
          <td>blacklist.conf</td>
          <td>Disable modules (advanced)</td>
          <td>airspy, dvb_usb_rtl28xxu, hackrf, nouveau, r8169, rtw89*, rtw_*, rtl*, rtwcore</td>
        </tr>
        <tr>
          <td>devices.conf</td>
          <td>Device specifics (Thunderbolt, USB, HDMI, NVME)</td>
          <td>dm_mod, loop, mmc_core, overlay, rtsx_pci, thunderbolt, zram</td>
        </tr>
        <tr>
          <td>drm.conf</td>
          <td>Digital Rights Management (DRM) for displays</td>
          <td>drm_display_helper, gpu_sched</td>
        </tr>
        <tr>
          <td>encrypt.conf</td>
          <td>Cryptography/Encryption protocols</td>
          <td>cryptodev, lkrg</td>
        </tr>
        <tr>
          <td>intel.conf</td>
          <td>Intel specifics</td>
          <td>i915, kvm, kvm_intel, snd_sof_intel_hda, soundwire*, vfio_pci, xe</td>
        </tr>
        <tr>
          <td>network.conf</td>
          <td>Ethernet, Wifi, Bluetooth</td>
          <td>bluetooth, btusb, cfg80211, iwlwifi, mac80211, mlx4_(core, en, ib), ib_(ipoib, iser, isert, srp, srpt, set, qib), ip_(ipoib, set), nf_conntrack, r8125, rfcomm, rtw89core_git, rtw89pci_git, rtw89_usb_git</td>
        </tr>
        <tr>
          <td>nvidia.conf</td>
          <td>NVIDIA specific</td>
          <td>nvidia, nvidia_drm, nvidia_modeset, nvidia_uvm</td>
        </tr>
        <tr>
          <td>video.conf</td>
          <td>Video specific (v4l2loopback, uvc, blackmagic)</td>
          <td>blackmagic, cec, uvcvideo, v4l2loopback, v4l2loopback_dc</td>
        </tr>
      </tbody>
    </table>
  </div>


