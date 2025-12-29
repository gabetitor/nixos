{
  config,
  lib,
  pkgs,
  username,
  ...
}:
{
  virtualization = {
    libvirtd = {
      enable = true;
    };
    spiceUSBRedirection.enable = true;
  };

  users.users.${username}.extraGroups = ["libvirtd"];
  programs.virt-manager.enable = true;
}