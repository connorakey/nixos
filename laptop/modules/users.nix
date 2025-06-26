{ config, lib, pkgs, ... }:

{
  users.users = {
    connor = {
      isNormalUser = true;
      extraGroups = [ "wheel" "lp" "bluetooth" ];
    };
  };
}
