{
  config,
  lib,
  pkgs,
  username,
  ...
}:
{
  virtualisation = {
    libvirtd = {
      enable = true;
    };
    spiceUSBRedirection.enable = true;
  };

  users.users.${username}.extraGroups = ["libvirtd"];
  programs.virt-manager.enable = true;
}