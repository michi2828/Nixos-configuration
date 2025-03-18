{ pkgs }:

[
   pkgs.waybar         # Status bar
    pkgs.rofi   # Application launcher
    pkgs.rofi-power-menu
    pkgs.git 
    pkgs.fish 
    pkgs.cowsay
    pkgs.rofi-top 
#    pkgs.hyprpaper      # Wallpaper daemon for Hyprland
    pkgs.kitty          # Terminal emulator
    pkgs.firefox        # Web browser
    pkgs.thunderbird    # Email client
    pkgs.signal-desktop # Messaging app
    pkgs.prismlauncher  # Minecraft launcher
    pkgs.openrgb-with-all-plugins
    pkgs.pavucontrol    # Audio volume control
    pkgs.alsa-utils     # ALSA tools
    pkgs.pipewire       # Audio system
    pkgs.wireplumber    # Pipewire session manager
    pkgs.zed-editor     # Code editor
    pkgs.neovim         # Terminal editor
    pkgs.flatpak        # Support for Flatpak apps
    pkgs.wl-clipboard   # Clipboard manager for Wayland
    pkgs.grim           # Screenshot tool
    pkgs.slurp          # Select a region (used with grim)
    pkgs.swappy         # Annotate screenshots
    pkgs.xdg-desktop-portal-hyprland # XDG integration for Hyprland
    pkgs.swww           # Wallpaper daemon
    pkgs.wl-clipboard
    pkgs.xfce.thunar
    pkgs.dunst
    pkgs.zoxide
    pkgs.wget
    pkgs.toybox
    pkgs.spotify
    pkgs.fastfetch
    pkgs.cmatrix    
    pkgs.yazi
#    pkgs.modrinth-app
    pkgs.hyprlandPlugins.hyprspace
    pkgs.hyprlandPlugins.hyprtrails    
    pkgs.ntfs3g
    pkgs.hyprlandPlugins.hypr-dynamic-cursors
    pkgs.hyprland-protocols
    pkgs.unzip
    pkgs.filezilla
    pkgs.zip
    pkgs.hyprgui
#  (import ../flake.nix).packages.${pkgs.system}.zen-browser
    pkgs.pavucontrol
]
