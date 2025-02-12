{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  name = "ms-thesis";
  buildInputs = with pkgs; [
    just
    texliveSmall
    sioyek
    rubber
  ];

  shellHook = ''
    alias build="ls"
  '';
}
