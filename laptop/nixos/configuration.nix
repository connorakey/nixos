{ inputs, config, libs, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../modules/bootloader.nix
    ../modules/packages.nix
    ../modules/fonts.nix
    ../modules/services.nix
    ../modules/users.nix
  ];

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = "laptop";

  time.timeZone = "America/Los_Angeles";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "25.11";
}
