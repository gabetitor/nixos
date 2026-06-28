{
  ...
}:
{
  virtualisation = {
    libvirtd = {
      enable = true;
    };
    spiceUSBRedirection.enable = true;

    containers.enable = true;
    podman = {
     enable = true;
     dockerCompat = true;
     defaultNetwork.settings = { dns_enabled = true; };
    };
  };

  users.users.mutate.extraGroups = [
    "libvirtd"
    "podman"
  ];
  programs.virt-manager.enable = true;
}
