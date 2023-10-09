{ config, pkgs, ...}:

{
  home.username = "jrhin";
  home.homeDirectory = "/home/jrhin";

  home.packages = [
    
  ];

  home.sessionVariables = {
    EDITOR = "helix";
    SHELL = "zsh";
  };

  home.file = {
    
  };

  home.stateVersion = "22.11";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    userName = "JRhin";
    userEmail = "jrhin@proton.me";
  };

  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    #histSize = 10000;
    #histFile = "${config.xdg.dataHome}/zsh/history";
    shellAliases = {
      update = "sudo nixos-rebuild switch --flake ~/.mysystem#myNixos";
    };
    envExtra = ''
    '';
  };

  xdg.mimeApps.defaultApplications = {
    "application/pdf" = ["zathura.desktop"];
    "image/*" = ["sxiv.desktop"];
    "video/png" = ["mpv.desktop"];
    "video/jpg" = ["mpv.desktop"];
    "video/*" = ["mpv.desktop"];
  };
}