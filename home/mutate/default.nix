{
  config,
  pkgs,
  ...
}:
{

  imports = [
    ./programs/easyeffects.nix
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
    whipper
    obsidian
    anki
    bitwarden-desktop
    mpv
    plexamp
    signal-desktop
    fastfetch
    tailscale
    nixd
  ];

  home.stateVersion = "25.11";
}
