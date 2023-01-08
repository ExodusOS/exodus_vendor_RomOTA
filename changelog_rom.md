Only Exodus OS
==================================
2th January, 2023

Short changelog:
- Switch to jemalloc memory allocator 
- Support wildcards in cached hosts file 
- Sort and cache hosts file data for fast lookup 
- on 64-bit, zero the leading stack canary byte 
- Add support for opening zip files by fd paths 
- replace VLA formatting with dprintf-like function 
- fix undefined out-of-bounds accesses in sched.h 
- replace brk and sbrk with stubs
- allow reboot recovery on devices without bootloader 
- Bring back custom charger percent text 
- always return unlocked in GetDeviceLockStatus 
- Increase max_map_count for hardened malloc 
- Increase readahead window multiplier for POSIX_FADV_SEQUENTI… 
- Set TCP memory size 
- Remove redundant settings in init.rc for cpu scaling_max_freq 
- Hide Magisk better 
- Don't enable f2fs iostat by default 
- Disable native stats collection service 
- Don't start console unless asked to 
- Fix data lost in zram_swap if system rebooted 
- Set /dev/uinput as 0666 to fix fingerprint sensor on some… 
- Avoid divide-by-zero in performance measurement 
- Modifying /dev/memcg permissions 
- Reboot to recovery on panic by default to allow reading pstore 
- Set /system/etc/init.d/* permissions 
- Set permissions on /system/addon.d/ and files within. 
- Disable dm-verity when AVB is permissive 
- Add fsync after write split file name
- Increase the minimal remount scratch size to 64MiB for F2FS scratch
- Fix checkpoint=disable GC threshold fallback mechanism
- 
==================================

30th December, 2022

Short changelog:
- Add ripple animation to task menu items
- Introduce overview scrolling scale animation in Launcher
- Add memory info in Launcher
- Add recents and app drawer opacity customization in Launcher
- Add toggle themed icons for all apps in Launcher
- Added Grid style recents in Launcher
- Add Reset battery stats
- Add support for Smart Charging
- Add support for app signature spoofing
- Add Cloudflare DNS as a private DNS provider
- Add AdGuard DNS as a private DNS Provider
- Allow disabling netflix spoofing
- Mute logcat spam
- Address a memory leak
- Redesign our toolbar in Settings
- Redesign layout in Settings
- Kill trust interface hint on first boot
- Enable advanced reboot by default
- Disable keyguard screen off animation if we use split notification shade
- Settings: Address a memory leak
- vendor: Add 720p bootanimation again
- Remove beta tag for themed icons
- 
==================================

20th December, 2022

Short changelog:
- Add Network speed setting to status bar
- Add status bar padding options
- Add Status bar clock chip
- Add Transparent QS customization
- ADd toggle data usage view on QS footer
- Make roaming indicator optional
- Bring back old style mobile data indicators
- Add option to Display Data Disabled Indicator 
- Allow using 4G icon instead LTE
- Add DND & Rate settings to flash on call
- Allow to flash on call only when entirely silent
- Use navigation handle dimens from Android 13
- Further shift the clock above the center
- Reduce QS tile padding
- Improve clock on lock screen
- Add Flashlight blink on incoming calls
- Allow disabling ripple effect on unlock
- Add Live Volume Steps 
- Add Quick Screen Unlock
- Add QS tile layout settings
- Add signal and wifi icon style theming
- Add window ignore secure feature
- Add unlock high FPS in games
- Add unlimited Google photo storage
- Add three-fingers-swipe to screenshot
- Add clear button to the recents menu
- Add support for themed icons
- Add button to restart SystemUI 
- Add RenderingJitter test
- Add PixelProps Utils
- Build {OnePlusSans, Ubuntu, Exo2} font overlays
- Add Repainter support
- Use Monet colors for power menu
- Follow light/dark theme in power menu
- Import and switch to OOS 12 ui effects
- Use color accent for charging animation
- Optimization and added missing system animation
- Set lockscreen clock font dynamically
- Use user fonts for Material UI themes
- Update some Setting's animation 
- More optimization's and fix's
