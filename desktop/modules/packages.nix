{ pkgs, ...}: {

  environment.systemPackages = with pkgs; [
    
    # Window Manager(s)
    hyprland

    # Desktop Apps
    firefox
    vesktop
    steam
    heroic
    spotify
    _1password-gui
    emacs
    eddie
    qbittorrent # For torrenting Linux ISOs

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

    # Programming Languages/Utilities
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


    # Libraries
    libtool
    ispell

    # Hyprland Utilities
    hyprlock
    hyprpaper

    # General Utilities
    foot
    blueman
    rofi-wayland
    waybar
    pulseaudio # FOR PULSE AUDIO UTITILES

    # Drivers
    mesa

    # Themes
    gruvbox-material-gtk-theme
    nordic
    adwaita-icon-theme
    gtk3
    gtk4

  ];

  nixpkgs.config.permittedInsecurePackages = [
    "dotnet-runtime-6.0.36"
    "dotnet-sdk-6.0.428"
  ];

}
