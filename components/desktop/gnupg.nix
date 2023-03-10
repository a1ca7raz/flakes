{ ... }:
{
  programs.gnupg = {
    agent = {
      enable = true;
      pinentryFlavor = "qt";
      enableBrowserSocket = true;
      enableExtraSocket = true;
      enableSSHSupport = true;
    };
    dirmngr.enable = true;
  };

  services.pcscd.enable = true;
  hardware.gpgSmartcards.enable = true;

  environment.persistence."/nix/persist".users.nomad.directories = [
    ".gnupg"
  ];
}