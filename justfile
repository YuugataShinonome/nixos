
build:
  git add -A
  sudo nixos-rebuild switch --flake .

gc:
  sudo nix profile wipe-history --older-than 7d --profile /nix/var/nix/profiles/system
  sudo nix-collect-garbage --delete-old
  nix-collect-garbage --delete-old
