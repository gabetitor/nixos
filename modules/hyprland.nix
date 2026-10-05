{ ... }:
{
  programs.hyprland = {
    enable = true;
    withUWSM = true;
  };

  environment.pathsToLink = [ "/share/hypr" ];
}
