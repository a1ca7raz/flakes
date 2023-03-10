{ ... }:
let
  c = x: ".config/" + x;
  ls = x: ".local/share/" + x;
in
{
  environment.persistence."/nix/persist".users.nomad = {
    directories = [
      (c "Kvantum")
      (c "latte")
      (ls "latte")
      (c "menus")
      (ls "plasmashell")
      (ls "plasma")
      (ls "kwin")
      (ls "icons")
      ".icons"
    ];

    files = [
      # (c "kglobalshortcutsrc")
      # (c "khotkeysrc")
      (c "kwinrulesrc")
      # (c "plasma-org.kde.plasma.desktop-appletsrc")
    ];
  };
}