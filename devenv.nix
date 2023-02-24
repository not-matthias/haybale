{pkgs, ...}: {
  languages.rust = {
    enable = true;
    version = "latest";
  };

  packages = with pkgs; [
    llvmPackages_15.llvm.dev
    boolector
    gmp
    btor2tools
    libxml2
    ncurses
    zlib
  ];

  enterShell = ''
    export LD_LIBRARY_PATH=
  '';
}
