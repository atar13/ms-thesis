
# default recipe to display help information
help:
  @just --list

build:
  latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode -shell-escape main.tex
