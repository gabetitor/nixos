{ ... }:
{
  wayland.windowManager.hyprland = {
   enable = true;

   # Using NixOS module package
   package = null;
   portalPackage = null;

   # for UWSM
   systemd.enable = false;

   configType = "lua";
   settings = {

   };
  };
}
