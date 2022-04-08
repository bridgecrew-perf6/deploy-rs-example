{ config, pkgs, ... }:

{
  users.users.admin = {
    name = "admin";
    initialPassword = "1234";
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    openssh.authorizedKeys.keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAOst/A8NYnpPWB2Lg/aPdFfzyBbp221H+RZ6qMFccEC michael.reddick@gmail.com" ];
  };
  security.sudo.wheelNeedsPassword = false;
  nix.trustedUsers = [ "@wheel" ]; # https://github.com/serokell/deploy-rs/issues/25
}
