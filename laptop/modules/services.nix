{ config, lib, pkgs, ... }:

{
  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;
  hardware.nvidia.modesetting.enable = true;

  # To run nvidia software prefix the application with nvidia-offload
  # Example nvidia-offload emacs
  # This would run emacs on the nvidia gpu

  hardware.nvidia.prime = {
    offload = {
      enable = true;
      enableOffloadCmd = true;
    };

    intelBusId = "PCI:0:2:0";
    nvidiaBusID = "PCI:1:0:0";

  };

  specialisation = {
    nvidia-mode.configuration = {
        prime.sync.enable = lib.mkForce true;
        prime.offload = {
          enable = lib.mkForce false;
          enableOffloadCmd = lib.mkForce false;
        };
    };
  };

  services.printing.enable = true;
  hardware.bluetooth.enable = true;

  networking.networkmanager.enable = true;

  services.flatpak.enable = true;

  services.emacs.enable = true;

  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  programs.gamemode.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
    alsa.enable = true;
    jack.enable = true;
  };
}
