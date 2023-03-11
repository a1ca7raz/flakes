{ self, inputs, ... }:
{
  imports = [ self.nixosModules.nur ];  # Import NUR Repos

  nix = {
    nrBuildUsers = 0;
    optimise.automatic = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };

    # https://github.com/NixOS/nixpkgs/issues/204292
    registry.nixpkgs.flake = inputs.nixpkgs;

    settings = {
      experimental-features = [ "nix-command" "flakes" "auto-allocate-uids" "cgroups" ];
      auto-allocate-uids = true;
      use-cgroups = true;
      auto-optimise-store = true;
    };
  };

  nixpkgs.config = {
    allowUnfree = true;
  };
}