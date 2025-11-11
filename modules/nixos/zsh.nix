{ config, pkgs, ... }:

{
  environment.shells = with pkgs; [ zsh ];
  users.defaultUserShell = pkgs.zsh;
  programs.zsh = {
    enable = true;
    enableCompletion = false;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;

    promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";

    # oh-my-zsh
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
        "dirhistory"
        "history"
      ];
    };
  };
}
