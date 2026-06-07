{
  config,
  pkgs,
  ...
}:
{

  imports = [
    ./programs/easyeffects.nix
    ./programs/git.nix
    ./programs/ghostty.nix
    ./programs/mpv.nix
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
    obsidian
    anki
    plexamp
    signal-desktop
    fastfetch
    tailscale
    nixd
  ];

  home.stateVersion = "25.11";
}
