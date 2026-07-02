{
  config,
  pkgs,
  ...
}:
{

  imports = [
    ./programs/hypr/default.nix

    ./programs/easyeffects.nix
    ./programs/git.nix
    ./programs/ghostty.nix
    ./programs/mpv.nix
    ./programs/ssh.nix
    ./programs/whipper.nix
    ./programs/zed.nix
  ];

  home.username = "mutate";
  home.homeDirectory = "/home/mutate";
  home.shell.enableBashIntegration = true;

  home.packages = with pkgs; [
    firefox
    spotify
    discord
    devenv
    obsidian
    anki
    plexamp
    protontricks
    signal-desktop
    fastfetch
    tailscale
    nixd
    zenity # for CLIs
    vscode-fhs
    wine
  ];

  home.stateVersion = "25.11";
}
