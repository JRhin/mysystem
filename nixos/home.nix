{ config, pkgs, ...}:

{
  home.username = "jrhin";
  home.homeDirectory = "/home/jrhin";

  home.packages = [
    
  ];

  home.sessionVariables = {
    EDITOR = "helix";
  };

  home.file = {
    
  };

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;
}