{
  programs.git = {
    enable = true;
    userName = "jason";
    userEmail = "ernstjason1@gmail.com";

    extraConfig = {
      gpg = {
        format = "ssh";
      };
      "gpg \"ssh\"" = {
        program = "op-ssh-sign";
      };
      commit = {
        gpgsign = true;
      };
      user = {
        signingKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGDMaQs+szAMlBHJk07vZf7HUUjOUExOQCeVLd7Lg+mD";
      };
    };
  };
}
