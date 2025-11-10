{ inputs, pkgs, ... }:
{
  programs.git = {
    enable = true;
    userName = "Hyde12";
    userEmail = "damageinchyde@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}
