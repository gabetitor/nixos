{ ... }:
{
  programs.ssh = {
    enable = true;
    matchBlocks = {
      "codeberg.org" = {
        hostname = "codeberg.org";
        user = "git";
        identityFile = "~/.ssh/codeberg";
      };
    };
  };
}
