{ inputs,...}: {

  imports = [
    inputs.hardware.nixosModules.lenovo-thinkpad-x1-13th-gen
    ./hardware-configuration.nix
    ../common/disk.nix
  ];

  networking = {
    hostName = "aurora";
    useDHCP = true;
  };

  system.stateVersion = "25.05";
}
