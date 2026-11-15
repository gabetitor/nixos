{
  pkgs-unstable,
  ...
}:
{
  programs.obsidian = {
   enable = true;
   package = pkgs-unstable.obsidian;
   defaultSettings = {
    communityPlugins = {
      excalidraw.enable = true;
      git.enable = true;
    };
   };
  };
}
