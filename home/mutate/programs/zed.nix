{ ... }:
{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "tokyo-night"
      "java"
      "nix"
      "golangci-lint"
    ];
    userSettings = {
      vim_mode = true;

      theme = {
        mode = "dark";
        light = "One Light";
        dark = "Tokyo Night";
      };

      features = {
        copilot = false;
      };
      telemetry = {
        metrics = false;
      };
    };
  };
}
