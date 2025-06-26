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

    # CLI
    fastfetch
    tree
    git
    neovim
    starship
    flatpak
    cava
    jq

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

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji
    nerd-fonts.fira-code
    nerd-fonts.sauce-code-pro
    nerd-fonts.ubuntu
    nerd-fonts.ubuntu-mono
    nerd-fonts.ubuntu-sans
  ];

}
