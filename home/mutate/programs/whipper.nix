{ pkgs, ... }:
{
  home.packages = [ pkgs.whipper ];
  xdg.configFile."whipper/whipper.conf" = {
    text = ''
    [drive:HL-DT-ST%3ABD-RE%20BP60NB10%20%20%3A1.02]
    vendor = HL-DT-ST
    model = BD-RE BP60NB10
    release = 1.02
    defeats_cache = True
    read_offset = 6
    '';
  };
}
