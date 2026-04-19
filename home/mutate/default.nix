{
  config,
  pkgs,
  ...
}: {

  imports = [

  ];

  home.username = "mutate";
  home.homeDirectory = "/home/mutate";
  home.shell.enableBashIntegration = true;

  home.packages = with pkgs; [
    firefox
    spotify
    discord
    easyeffects
    whipper
    obsidian
    anki
    bitwarden-desktop
    lact
    mpv
    plexamp
    signal-desktop
    vscode-fhs
    fastfetch
    tailscale
  ];

  home.stateVersion = "25.11";
}