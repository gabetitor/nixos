{ ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "gabetitor";
        email = "gabetitor@noreply.codeberg.org";
      };
    };
  };
}
