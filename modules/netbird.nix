{
  pkgs-unstable,
  ...
}:
{
  services.netbird= {
    enable = true;
    package = pkgs-unstable.netbird;
    useRoutingFeatures = "both";
  };
}
