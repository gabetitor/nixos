{ pkgs-unstable, ...}: {
  services.easyeffects = {
    package = pkgs-unstable.easyeffects;
    enable = true;
    preset = "HE6SEV2";
    extraPresets = {
      HE6SEV2 = builtins.fromJSON (builtins.readFile ./HE6SEV2.json);
    };
  };
}
