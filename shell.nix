{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  name = "ms-thesis";
  buildInputs = with pkgs; [
    just
    texliveFull
    sioyek
    rubber
  ];

  shellHook = ''
    alias build="ls"
  '';
}
