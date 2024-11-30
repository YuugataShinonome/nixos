{ pkgs, inputs, ... }:

{
  services.mihomo = {
    enable = true;
    tunMode = true;
    configFile = "${inputs.clash-profile}/clash-profile/default.yaml";
    webui = pkgs.metacubexd;
  };
}
