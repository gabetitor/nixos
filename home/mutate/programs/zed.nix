{ ... }:
{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "tokyo-night"
      "java"
      "nix"
      "golangci-lint"
      "lua"
      "terraform"
    ];
    userSettings = {
      vim_mode = true;
      show_completions_on_input = true;

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

      languages = {
        Nix = {
          language_servers = [
            "nixd"
            "!nil"
          ];
        };
        Python = {
         language_servers = [
          "ty"
          "!basedpyright"
         ];
        };
      };

    };
  };
}
