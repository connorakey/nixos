{ config, lib, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Desktop Apps
    firefox
    vesktop
    steam
    spotify
    _1password-gui
    emacs

    #CLI
    fastfetch
    tree
    git
    neovim
    starship
    flatpak
    cava
    jq
    ripgrep
    fd

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

    # Libraries
    libtool
    ispell

    # Themes
    numix-icon-theme-circle
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
