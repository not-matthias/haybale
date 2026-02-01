{ pkgs, ... }:
{
  languages.rust = {
    enable = true;
    version = "latest";
  };

  packages = with pkgs; [
    llvmPackages_21.llvm.dev
    boolector
    gmp
    btor2tools
    libxml2
    ncurses
    zlib
    z3
  ];
}
