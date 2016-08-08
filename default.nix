{ nixpkgs ? import <nixpkgs> {}, compiler }:
let io-streams-haproxy = (import ../io-streams-haproxy/default.nix { inherit nixpkgs compiler; }); in
nixpkgs.pkgs.haskell.packages.${compiler}.callPackage ./snap-server.nix { inherit io-streams-haproxy; }

