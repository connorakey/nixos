{ pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    brave
    vesktop
    steam
    heroic
    spotify
    _1password-gui
    emacs
    eddie # VPN client for AirVPN
    qbittorrent # for torrenting linux isos
    whatsie # FOSS WhatsApp Client for Linux
    stremio

    # CLI
    fastfetch
    tree
    git
    neovim
    starship
    flatpak
    cava
    jq
    ffmpeg

    # Programming Languages / Utilities
    gcc
    cmake
    gnumake
    clang
    clang-tools

    # Rust Programming
    rustc
    cargo
    rustfmt
    clippy

    # General Utilities
    ifuse
    libimobiledevice
    usbmuxd
    fuse

    # Libraries
    libtool
    ispell

    # Themes
    numix-icon-theme-circle
    gtk3
    gtk4

    # Gnome Extensions
    gnomeExtensions.dash-to-dock
    gnomeExtensions.caffeine
    gnomeExtensions.blur-my-shell
    gnomeExtensions.extension-list
    gnomeExtensions.system-monitor
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "dotnet-runtime-6.0.36"
    "dotnet-sdk-6.0.428"
  ];

}
