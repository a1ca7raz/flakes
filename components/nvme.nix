{ ... }:
{
  boot.initrd = {
    availableKernelModules = [ "nvme" ];
    services.udev.rules = ''
      ACTION=="add|change", KERNEL=="nvme[0-9]*", ATTR{queue/rotational}=="0", ATTR{queue/scheduler}="none"
    '';
  };
}