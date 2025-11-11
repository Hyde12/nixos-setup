{ inputs, ... }:
{
  programs.hyprpanel = {
    enable = true;

    # settings = {
    #   bar.layouts = {
    #     "0" = {
    #       left = [ "dashboard" "workspaces" ];
    #       middle = [ "windowtitle" ];
    #       right = [ "volume" "battery" ];
    #     };
    #   };

    #   theme = {
    #     bar.scaling = 60;
    #     notifications.scaling = 60;
    #     osd.scaling = 60;
    #     dashboard.scaling = 60;
    #     dashboard-menu.scaling = 60;
    #     dashboard_menu.scaling = 60;
    #     tooltips.scaling = 60;
    #   };

    #   scalingPriority = "both";

    #   bar.launcher.autoDetectIcon = true;
    #   bar.workspaces.show_icons = true;
    # }; 
  };
}