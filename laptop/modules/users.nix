{ pkgs, ... }:

{
  users.users = {
    connor = {
      isNormalUser = true;
      extraGroups = [ "wheel" "bluetooth" "lp" ];
    };

  };
}
