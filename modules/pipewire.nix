{
  ...
}:
{
  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
    extraConfig.pipewire = {
      "10-sample-rates" = {
       "context.properties" = {
        "default.clock.allowed-rates" = [
          44100
          48000
          96000
          192000
          384000
          768000
        ];
       };
      };
    };
  };
}
