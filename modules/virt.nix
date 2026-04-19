{
  config,
  lib,
  pkgs,
  ...
}:
{
  virtualisation = {
    libvirtd = {
      enable = true;
    };
    spiceUSBRedirection.enable = true;
  };

  users.users.mutate.extraGroups = ["libvirtd"];
  programs.virt-manager.enable = true;
}