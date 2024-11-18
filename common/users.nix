{ config, pkgs, ... }:
{
  opnix = {
    environmentFile = "/etc/opnix.env";
    secrets = {
      secret.source = ''
        jason:{{ op://Infrastructure/System Account?attribute=text }}"
      '';
      secret.path = "/etc/passwd/jason";
    };
  };
  
  # users.mutableUsers = false;
  users.users.jason = {
    isNormalUser = true;
    description = "Jason Ernst";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC64NthfwLdmZW8H3hMCfR3gGbZhZvlSKrYiPNHVq5DwWmxZj0jmmvWKuKwCgwps9DDm01wS2++20Ow6btcXzIGqlK5zXrw2QzlLjf7LMh5bb1VQbGeX1jbiekY8ow5GF8zl3x/twlaiUPQJx2ZM3aQsqsboDbjon+ayyufyy+D90sRuOZUbS9KDxebLH4f34Rhp4XmG54QlvNH8duf0fazDpBrpzZX+vl/4v1xKU+6nTpyHNaWhciF02mOnE4aP+Ww3zn9NM1wJAMyZaYRLtUL0gjYt1OC+vQbrA/nddAdTDoDXQuV1AnKf2R4jIN/Gff4WMRe5/mPAfuo7/9YCCk/ ernstjason1@gmail.com"
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDixOh3GLDzZRoUFCUbBRavU1Gd5GqX6/cwb8Cg6fn8cz4PIxysDR0PNzeLkBYqvUWN6qsJROtZ+W8/QGmTWaX5yzGK5qZcMTip/quHfmK3buRPayKMWR8lXEyeqTLhDf0ZstorJLNKWF02qd8DQgI/XV1T1skT69sztgx7s3YpFjcLKUPWFnjAT557DYqz0AphIF3Tm2b3ezieXuHxbS5YsZSTVKZgoXtnHu6qFhEjWMfwvMvw7smWx3crjdzlZN6qk9pM6SRUV1bc8SstZWha+D6OstPnra6mjaSYpcTviVYZEMjeuQBRgVa9YB97qVRwAT4cWxfzMNNpwRyGoKgyI47lDcfDKO+ONTYAkclOyN6UdA8nzBA+s5+00kf3zUVr7w1AbPJd69c884OP1HIUaAb9S4bKoBOtM/C1bpxiAc53z53xNqOBNG4F8HN/KtfodGWnF80GjI859kZAtD7lpUb3wiTZHISwG4bhszI4v7HYWkuw8D4Isi8Ddnctg3X3V7mh9dDOIzb56Qn1Nbxwq3fzIY5Xmq1ZMxg3ljVFj9LxtznVfPmmVsD794VM1yoUhwNHV4grFnyXoufl5RZea0KYpaa9ALOmnF6uljN1Wsm3hmmYvgO0pUv4S4cZ/9yH1vpTrfCmv9T83cmYvAXmwNV7/ZJt/WY5t0GuRcIfsw== compscidr@github/42983352"
    ];
    # hashedPasswordFile = config.opnix.secrets.secret.path;
    # todo: turn this back on when we figure out wtf is going wrong here
  };
}
