### nix install

1. `sudo apt install nix-bin`

2. `nix-channel --list`

3. `nix-channel --add https://nixos.org/channels/nixpkgs-unstable nixpkgs`

4. `nix-channel --update`

5. `echo $NIX_PATH`

6. `export NIX_PATH=nixpkgs=/path/to/nixpkgs:$NIX_PATH`

7. `sudo chmod 777 /var/run/nix/nix.socket`

8. `ls -l ~/.nix-defexpr/channels/nixpkgs` && `export NIX_PATH=nixpkgs=/nix/store/qafid1al1f6fhiq449hvj427mcpm1s4h-nixpkgs/nixpkgs:$NIX_PATH` pointing to symlink from ls -l results

9. `nix --extra-experimental-features 'nix-command flakes' flake new --template github:JRMurr/NixOsConfig#rust .`
