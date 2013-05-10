" Language:    CoffeeScript
" Maintainer:  Mick Koch <kchmck@gmail.com>
" URL:         http://github.com/kchmck/vim-coffee-script
" License:     WTFPL

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

setlocal formatoptions-=t formatoptions+=croql
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal omnifunc=javascriptcomplete#CompleteJS

" Enable CoffeeMake if it won't overwrite any settings.
if !len(&l:makeprg)
  compiler coffee
endif

" Check here too in case the compiler above isn't loaded.
if !exists('coffee_compiler')
  let coffee_compiler = 'coffee'
endif

" Path to coffeelint executable
if !exists('coffee_linter')
  let coffee_linter = 'coffeelint'
endif

" Options passed to CoffeeLint
if !exists('coffee_lint_options')
  let coffee_lint_options = ''
endif

