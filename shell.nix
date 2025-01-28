{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell {
  name = "resume";
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
