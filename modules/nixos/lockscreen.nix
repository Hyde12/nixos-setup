{pkgs, config, ...}:
{
    # sddm-astronaut-theme
    services.displayManager.sddm = {
      enable = true;
      theme = "sddm-astronaut-theme"; # Must match package name
      settings = {
        General = {
          Background = "/etc/nixos/resources/wallpapers/jake_the_dog.mp4";
        };
      };
      extraPackages = with pkgs; [
        kdePackages.qtmultimedia
        kdePackages.qtsvg
        kdePackages.qtvirtualkeyboard
      ];
    };

  environment.systemPackages = with pkgs; [ #would be pkgs.packagename without the with pkgs;
      (pkgs.callPackage ../../resources/sddm-astronaut-theme {
        # astronaut black_hole cyberpunk hyprland_kath jake_the_dog japanese_aesthetic
        # pixel_sakura pixel_sakura_static post-apocalyptic_hacker purple_leaves
        theme = "jake_the_dog";
     })
  ];
}