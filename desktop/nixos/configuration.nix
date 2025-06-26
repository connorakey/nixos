{ inputs, config, libs, pkgs, ...}:

{

  imports = [
    ./hardware-configuration.nix
    ../modules/bootloader.nix
    ../modules/packages.nix
    ../modules/services.nix
    ../modules/users.nix
  ];

  nixpkgs.config.allowUnfree = true;
  
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  networking.hostName = "desktop";

  time.timeZone = "Australia/Melbourne";

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "25.11";

}
