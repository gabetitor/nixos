{ ... }:
{
  programs.mpv = {
    enable = true;
    config = {
      vo = "dmabuf-wayland";
    };
  };
}
