let g:neoformat_enabled_haskell = []

" Alias ghcid to use `cabal new-repl`
command GhcidNew execute ":Ghcid --command='cabal new-repl --ghc-options=-fno-code --ghc-options=-fno-break-on-exception --ghc-options=-fno-break-on-error --ghc-options=-v1 --ghc-options=-ferror-spans --ghc-options=-j exe:api' --setup=':set isrc' --setup=':load Main' --test=':main'"
