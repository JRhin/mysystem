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

  programs.kitty = {
    enable = true;
    font.name = "FiraCode Nerd Font Mono";
    font.package = pkgs.nerdfonts.override {fonts = ["FiraCode"];};
    font.size = 12.0;
    shellIntegration.enableZshIntegration = true;
    theme = "Catppuccin-Mocha";
  };

  programs.helix = {
    enable = true;

    settings = {
      theme = "catppuccin_mocha";
      
      editor = {
        line-number = "relative";
        cursorline = true;
        color-modes = true;
        idle-timeout = 0;
        completion-trigger-len = 1;
        bufferline = "multiple";
        auto-save = true;

        statusline = {
          left = [
            "mode"
            "spinner"
            "version-control"
            "file-name"
            "file-modification-indicator"
            "file-encoding"
            "file-line-ending"
            "file-type"
          ];

          right = [
            "workspace-diagnostics"
            "selections"
            "position"
          ];
        };

        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };

        indent-guides = {
          render = true;
          character = "|";
        };

        lsp = {
          display-messages = true;
        };
      };
    };
  };

  xdg.mimeApps.defaultApplications = {
    "application/pdf" = ["zathura.desktop"];
    "image/*" = ["sxiv.desktop"];
    "video/png" = ["mpv.desktop"];
    "video/jpg" = ["mpv.desktop"];
    "video/*" = ["mpv.desktop"];
  };
}
