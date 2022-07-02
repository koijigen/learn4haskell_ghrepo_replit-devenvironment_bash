{ pkgs }: {
    deps = [
        pkgs.bashInteractive
        pkgs.util-linux
        pkgs.wget
        pkgs.w3m
        pkgs.vim
        pkgs.nodejs
        pkgs.ghc
        pkgs.cabal-install
        pkgs.haskell-language-server
        pkgs.tmux
	      pkgs.haskellPackages.doctest
    ];
}
