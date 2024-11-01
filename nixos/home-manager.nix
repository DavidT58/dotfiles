{ config, pkgs, ... }:

let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{

  imports = [
    <home-manager/nixos>
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
  };

  home-manager.users.david = {
    home = {
      username = "david";
      homeDirectory = "/home/david";
      packages = with pkgs; [
        httpie
        google-chrome
        htop
        terminator
        kubectl
        kubernetes-helm
        kubectx
        k0sctl
        vscode
        gh
        qbittorrent
        vlc
        signal-desktop
        hcloud
        opentofu
        terragrunt
        docker
        ansible
        awscli2
        jq
        oh-my-zsh
        zsh-powerlevel10k
	jetbrains.datagrip
        #obsidian
        #tor-browser-bundle-bin
        nodejs_22
        inetutils
        portfolio
        postman
        argocd
        dig
        zip
        unstable.zed-editor
      ];
      stateVersion = "24.05";
    };

    programs.vim = {
      enable = true;
      defaultEditor = true;
    };

    dconf.settings."org/gnome/desktop/wm/preferences".button-layout = ":minimize,maximize,close";

    programs.zsh = {
      enable = true;
      enableCompletion = true;

      sessionVariables = {
        AWS_PROFILE = "apex";
	EDITOR = "vim";
      };

      initExtra = "source /home/david/.p10k.zsh";

      history = {
        extended = true;
        save = 999999999;
        size = 999999999;
      };

      oh-my-zsh = {
        enable = true;
        plugins = [
          "git"
          "history"
          "aws"
        ];
        theme = "robbyrussell";
      };
    };
  };
}

