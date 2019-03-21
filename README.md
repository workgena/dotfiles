# dotfiles

A set of Vim, Git, Terminal/Shell, etc. configuration files.

## Favorite color schemes

* [gruvbox](https://github.com/morhetz/gruvbox)

  ```
  set background=light " dark
  let g:gruvbox_contrast_light='soft'
  let g:gruvbox_contrast_dark='soft'
  let g:gruvbox_italic=1
  let g:gruvbox_guisp_fallback='bg'
  color gruvbox
  ```

* [deus](https://github.com/ajmwagar/vim-deus)
* [nova](https://github.com/trevordmiller/nova-vim)
* [ayu](https://github.com/ayu-theme/ayu-vim)
* [srcery](https://github.com/srcery-colors/srcery-vim)
* [blue-mood](https://github.com/lmintmate/blue-mood-vim)
* railscasts
* [jelleybeans](https://github.com/nanotech/jellybeans.vim)
* [falcon](https://github.com/fenetikm/falcon)
* xoria256
* [seoul256](https://github.com/junegunn/seoul256.vim) `let g:seoul256_background = 233`
* [materialtheme](https://github.com/gwutz/vim-materialtheme)
* codeschool
* underwater-mod
* badwolf
* blue (Out of the box)
* [nachtleben](https://github.com/schickele/vim-nachtleben)
* herokudoc
* rootwater
* dracula
* Tomorrow-Night-Blue
* oxeded
* lucius
* corporation
* oceanblack
* transparent
* molokai
* [vim-monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty)
* moria
* flattened_light
* Slate
* neon
* no_quarter
* matrix
* cobalt2
* lightcolors
* laederon
* gor
* golden
* freya
* eclipse
* dw_green
* desert
* desertEx
* darker-robin
* cloudy
* chlordane
* candy
* breeze
* borland
* black_angus
* bensday
* PaperColor
* seti
* [tender](https://github.com/jacoborus/tender.vim)
* spring-night
* iceberg
* slate
* termschool
* [Spacegray](https://github.com/ajh17/Spacegray.vim)
* [base16](http://chriskempson.com/projects/base16/)
  - base16-atelier-lakeside-light
  - base16-default-dark
  - base16-eighties
  - base16-ocean
  - base16-oceanicnext
  - base16-railscasts
  - base16-tomorrow
  - base16-tomorrow-night
* [fahrenheit](https://github.com/fcpg/vim-fahrenheit)
* [farout](https://github.com/fcpg/vim-farout)
* [one](https://github.com/rakr/vim-one) `set background=dark`
* [space_vim_theme](https://github.com/liuchengxu/space-vim-theme)
* [scheakur](https://github.com/scheakur/vim-scheakur)

  ```
  set bg=dark " light
  " set bg=light
  let g:one_allow_italics = 1
  color one
  ```

* [onedark.vim](https://github.com/joshdick/onedark.vim) `let g:onedark_terminal_italics=1`
* [neodark](https://github.com/KeitaNakamura/neodark.vim)
* [nord](https://github.com/arcticicestudio/nord-vim)
* [OceanicNext](https://github.com/mhartington/oceanic-next)
* [quantum](https://github.com/tyrannicaltoucan/vim-quantum)
* [synthwave.vim](https://github.com/exitface/synthwave.vim)
* [vim-material](https://github.com/hzchirs/vim-material)
* [yowish](https://github.com/KabbAmine/yowish.vim)
* [duoduo](https://github.com/Yggdroot/duoduo)
* [escuro](https://github.com/fortes/vim-escuro)

Collections:

  - [vim-colorschemes](https://github.com/flazz/vim-colorschemes)
  - [Awesome Vim Color Schemes](https://github.com/rafi/awesome-vim-colorschemes)
  - [Solarized 8: True Colors](https://github.com/lifepillar/vim-solarized8)
  - [Rainglow for VIM](https://github.com/rainglow/vim) 320+ color themes for VIM, [preview](https://rainglow.io/preview/)


## List of interesting VIM plugins

* Plug 'mhinz/vim-grepper'      --> grep results appear in a quickfix
* Plug 'zhou13/vim-easyescape'  --> provides `inoremap jk <Esc>`
* Plug 'Raimondi/delimitMate'   --> provides insert mode auto-completion for quotes, brackets, etc.
* Plug 'junegunn/goyo.vim'      --> Distraction-free writing in Vim (paddings all sides)
* Plug 'bilalq/lite-dfm'        --> Distraction-free writing in Vim (paddings left+right)
* Plug 'junegunn/limelight.vim' --> Hyperfocus-writing in Vim.
* Plug 'kshenoy/vim-signature'  --> displays the marks created by the user on the signs column, which is good for remembering which marks were created.
* Plug 'mkitt/tabline.vim'      --> Display Tab number, better rendering of tabs
* Plug 'majutsushi/tagbar'      --> displays tags in a window, in other words "Outline"
* Plug 'junegunn/vim-emoji'     --> Emoji in Vim
* Plug 'neoclide/coc.nvim'      --> Intellisense engine for vim8 & neovim, full language server protocol support as VSCode
* Plug 'romainl/vim-qf'         --> collection of settings, commands and mappings put together to make working with the location list/window and the quickfix list/window smoother

    ```
    Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
    :so %
    :PlugInstall
    :CocInstall coc-json coc-html coc-css
    $ gem install solargraph
    :CocInstall coc-solargraph
    ```




## Terminal [base16](https://github.com/chriskempson/base16) favourites themes

* `base16_3024`
* `base16_apathy`
* `base16_atelier-dune`
* `base16_atelier-dune-light`
* `base16_atelier-estuary-light`
* `base16_harmonic-dark`
* `base16_hopscotch`
* `base16_irblack`
* `base16_marrakesh`
* `base16_materia`
* `base16_atelier-plateau-light`
* `base16_mexico-light`
* `base16_brewer`
* `base16_bright`
* `base16_chalk`

## Fonts

* `Source Code Pro Regular` | [homepage](https://adobe-fonts.github.io/source-code-pro/)
* `SF Mono Regular`
* `Droid Sans Mono`
* [Roboto Mono](https://fonts.google.com/specimen/Roboto+Mono)
* `Ubuntu Mono`
* `Hack`
* [IBM Plex Mono](https://fonts.google.com/specimen/IBM+Plex+Mono) | [homepage](https://www.ibm.com/plex/) | [Get Plex](https://github.com/IBM/plex/releases/tag/v1.0.2)
* `Fira Mono` [\[1\]](https://github.com/bBoxType/FiraSans/tree/master/Fira_Mono_3_2/Fonts/FiraMono_WEB_32) | [\[2\]](https://fonts.google.com/specimen/Fira+Mono)
* [Monaco](https://github.com/todylu/monaco.ttf)
* [Monego](https://github.com/cseelus/monego) # nice curved font, similar to Monaco
* `Menlo`
* `Edlo`
* `Consolas`
* `Inconsolata`
* `Monofur`
* [Hermit](https://pcaro.es/p/hermit/) # необычный, уникальный
* [Nitti PX](https://nomail.com.ua/font-page/31424?name=NittiPX-Normal)
* [Space Mono](https://fonts.google.com/specimen/Space+Mono)
* [ProFfontIIx Nerd Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/ProFont/profontiix) # очешь просторный, начертание необычное
* `Terminus`

[Improve Font Rendering on Debian 8 By Installing Infinality and Ubuntu Fonts](https://www.linuxbabe.com/desktop-linux/improve-font-rendering-on-debian-8-by-install-infinality-and-google-fonts) describes how to use **OSX** style

## Vim articles, cheat sheets, tutorials

* [Vim Cheat Sheet](https://vim.rtorr.com/) and [Vim Commands Cheat Sheet](http://www.fprintf.net/vimCheatSheet.html)
* [Getting Started with Vim](https://www.sitepoint.com/getting-started-vim/)
* [Effective Rails Development with Vim](https://www.sitepoint.com/effective-rails-development-vim/)
* [VIM Adventures](https://vim-adventures.com/) - Learn VIM while playing a game

## Shell(Terminal emulator)

* [fish](https://fishshell.com/) is a smart and user-friendly command line shell with Autosuggestions just like a web browser.
  - [Install fish shell in Debian 8](https://gist.github.com/mamiu/c3c0ee8f4cf05030a72e)
  - [How to make fish my default shell?](https://github.com/fish-shell/fish-shell#switching-to-fish)
  - [Fish as a default Gnome-Terminal shell](https://askubuntu.com/a/663139)


## JSHint for Vim

* Install NodeJS and JSHint

  ```
  $ sudo apt install nodejs
  $ sudo apt-get install npm
  $ sudo npm install -g jshint
  ```

* Create global [configuration](http://jshint.com/docs/options/) `~/.jshintrc`.  Good example with all options explained is [here](https://github.com/jshint/jshint/blob/master/examples/.jshintrc)
