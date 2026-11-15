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
      "github.com" = {
        hostname = "github.com";
        user = "git";
        identityFile = "~/.ssh/github";
      };
      "git.imprl.xyz" = {
        hostname = "git.imprl.xyz";
        user = "mutate";
        port = 222;
        identityFile = "~/.ssh/git_imprl";
      };
    };
  };
}
