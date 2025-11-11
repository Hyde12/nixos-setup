{ inputs, pkgs, ... }:
{
  programs.git = {
    enable = true;
    settings.user.name = "Hyde12";
    settings.user.email = "damageinchyde@gmail.com";
    settings = {
      init.defaultBranch = "main";
      safe.directory = "/etc/nixos";
    };
  };
}
