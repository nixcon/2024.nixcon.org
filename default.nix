{ pkgs ? import <nixpkgs> { }
, version ? "none"
}: with pkgs; stdenv.mkDerivation {
  inherit version;
  pname = "nixcon-2024-website";
  src = lib.cleanSource ./.;
  nativeBuildInputs = [ hugo ];
  buildPhase = "hugo -d $out";
}
