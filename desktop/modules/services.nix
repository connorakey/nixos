{ config, pkgs, ...}:

{

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  services.xserver.videoDrivers = [ "amdgpu" ];

  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;

  services.printing.enable = true;
  hardware.bluetooth.enable = true;
  
  networking.networkmanager.enable = true;

  services.flatpak.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-wlr ];

  services.emacs.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    jack.enable = true;
  };

}
