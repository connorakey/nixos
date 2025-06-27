{ pkgs, ...}: {

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-emoji

    nerd-fonts.fira-code
    nerd-fonts.sauce-code-pro
    nerd-fonts.jetbrains-mono


    nerd-fonts.ubuntu
    nerd-fonts.ubuntu-mono
    nerd-fonts.ubuntu-sans


  ];

}
