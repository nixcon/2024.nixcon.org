{ pkgs ? import <nixpkgs> {} }:
let
  stdenv = pkgs.stdenv;
  lib = pkgs.lib;
in stdenv.mkDerivation {
  pname = "nixcon-2024-website";
  version = "nope";
  src = lib.cleanSource ./.;
  nativeBuildInputs = [ pkgs.hugo ];
  buildPhase = ''
    hugo
  '';
  installPhase = ''
    mkdir -p $out
    cp -r public/* $out
  '';
}
