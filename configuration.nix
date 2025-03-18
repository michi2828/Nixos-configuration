{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  programs.fish.enable = true;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.

  # Steam
   programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    localNetworkGameTransfers.openFirewall = true; # Open ports in the firewall for Steam Local Network Game Transfers
   };

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Berlin";

  # Keyboard
   console.useXkbConfig = true;

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "de_DE.UTF-8";
    LC_IDENTIFICATION = "de_DE.UTF-8";
    LC_MEASUREMENT = "de_DE.UTF-8";
    LC_MONETARY = "de_DE.UTF-8";
    LC_NAME = "de_DE.UTF-8";
    LC_NUMERIC = "de_DE.UTF-8";
    LC_PAPER = "de_DE.UTF-8";
    LC_TELEPHONE = "de_DE.UTF-8";
    LC_TIME = "de_DE.UTF-8";
  };

  # Disable KDE Plasma
  services.displayManager.sddm.enable = false;
  services.desktopManager.plasma6.enable = false;

  # Enable Hyprland and wayland utilities
  programs.hyprland.enable = true;


  services.libinput.enable = true;

  services.xserver = {
     enable = true;
     layout = "de";
     xkbVariant = "";
     videoDrivers = [" amdgpu "];
  };


environment.systemPackages = import ./packages.nix { pkgs = pkgs; };

  # Enable PipeWire for audio
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Define user
  users.users.michi = {
    isNormalUser = true;
    description = "Michael Dahlmann";
    extraGroups = [ "networkmanager" "wheel" "audio" "video" ];
    password = "zotabene";
    shell = pkgs.fish;
  };

  # Enable Flatpak
  services.flatpak.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Openrgb
  services.hardware.openrgb.enable = true;  

  # Set system version
  system.stateVersion = "24.11";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
