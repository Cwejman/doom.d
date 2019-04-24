;;; init.el -*- lexical-binding: t; -*-

(setq doom-theme 'doom-nord-light)

(doom! :feature
       eval              ; run code, run (also, repls)
       (evil +everywhere); come to the dark side, we have cookies
       file-templates    ; auto-snippets for empty files
       (lookup           ; helps you navigate your code and documentation
        +docsets)        ; ...or in Dash docsets locally
       snippets          ; my elves. They type so I don't have to
       workspaces        ; tab emulation, persistence & separate workspaces
       ;; debugger          ; FIXME stepping through code, to help you add bugs

       :completion
       company           ; the ultimate code completion backend
       ivy               ; a search engine for love and life
       ;; (helm             ; the *other* search engine for love and life
       ;;  +fuzzy)          ; enable fuzzy search backend for helm
       ;;  ido              ; the other *other* search engine...

       :ui
       doom              ; what makes DOOM look the way it does
       doom-dashboard    ; a nifty splash screen for Emacs
       doom-quit         ; DOOM quit-message prompts when you quit Emacs
       evil-goggles      ; display visual hints when editing in evil
       hl-todo           ; highlight TODO/FIXME/NOTE tags
       modeline          ; a snazzy Atom-inspired mode-line
       nav-flash         ; blink the current line after jumping
       treemacs          ; a project drawer, like neotree but cooler
       (popup            ; tame sudden yet inevitable temporary windows
        +all             ; catch all popups that start with an asterix
        +defaults)       ; default popup rules
       unicode           ; extended unicode support for various languages
       vc-gutter         ; vcs diff in the fringe
       vi-tilde-fringe   ; fringe tildes to mark beyond EOB
       window-select     ; visually switch windows
       ;; fci               ; a `fill-column' indicator
       ;; neotree           ; a project drawer, like NERDTree for vim
       ;; pretty-code       ; replace bits of code with pretty symbols
       ;; tabbar            ; FIXME an (incomplete) tab bar for Emacs

       :editor
       fold              ; (nigh) universal code folding
       multiple-cursors  ; editing in many places at once
       lispy             ; vim for lisp, for people who dont like vim
       ;; rotate-text       ; cycle region at point between text candidates
       parinfer          ; turn lisp into python, sort of
       ;; (format +onsave)  ; automated prettiness

       :emacs
       (dired            ; making dired pretty [functional]
        +ranger          ; bringing the goodness of ranger to dired
        +icons)          ; colorful icons for dired-mode
       imenu             ; an imenu sidebar and searchable code index
       vc                ; version-control and Emacs, sitting in a tree
       electric          ; smarter, keyword-based electric-indent
       ;; eshell            ; a consistent, cross-platform shell (WIP)
       term              ; terminals in Emacs

       :tools
       docker
       ein               ; tame Jupyter notebooks with emacs
       flycheck          ; tasing you for every semicolon you forget
       flyspell          ; tasing you for misspelling mispelling
       macos             ; MacOS-specific commands
       magit             ; a git porcelain for Emacs
       pdf               ; pdf enhancements
       rgb               ; creating color strings
       ;; ansible
       ;; editorconfig      ; let someone else argue about tabs vs spaces
       ;;gist              ; interacting with github gists
       ;;lsp
       ;;make              ; run make tasks from Emacs
       ;;password-store    ; password manager for nerds
       ;;prodigy           ; FIXME managing external services & code builders
       ;;terraform         ; infrastructure as code
       ;;tmux              ; an API for interacting with tmux
       ;;upload            ; map local to remote projects via ssh/ftp
       ;;wakatime
       ;;vterm             ; another terminals in Emacs

       :lang
       (cc +irony +rtags); C/C++/Obj-C madness
       clojure           ; java with a lisp
       common-lisp       ; if you've seen one lisp, you've seen them all
       data              ; config/data formats
       emacs-lisp        ; drown in parentheses
       (java +meghanada) ; the poster child for carpal tunnel syndrome
       javascript        ; all(hope(abandon(ye(who(enter(here))))))
       lua               ; one-based indices? one-based indices
       markdown          ; writing docs for people to ignore
       (org              ; organize your plain life in plain text
        +attach          ; custom attachment system
        +babel           ; running code in org
        +capture         ; org-capture in and outside of Emacs
        +export          ; Exporting org to whatever you want
        +present)        ; Emacs for presentations
       (sh +fish)        ; she sells (ba|z|fi)sh shells on the C xor
       python            ; beautiful is better than ugly
       web               ; the tubes
       ;; assembly          ; assembly for fun or debugging
       ;; coq               ; proofs-as-programs
       ;; crystal           ; ruby at the speed of c
       ;; csharp            ; unity, .NET, and mono shenanigans
       ;; erlang            ; an elegant language for a more civilized age
       ;; elixir            ; erlang done right
       ;; elm               ; care for a cup of TEA?
       ;; ess               ; emacs speaks statistics
       ;; go                ; the hipster dialect
       ;; (haskell +intero) ; a language that's lazier than I am
       ;; hy                ; readability of scheme w/ speed of python
       ;; idris             ;
       ;; julia             ; a better, faster MATLAB
       ;; latex             ; writing papers in Emacs has never been so fun
       ;; ledger            ; an accounting system in Emacs
       ;; nim               ; python + lisp at the speed of c
       ;; nix               ; I hereby declare "nix geht mehr!"
       ;; ocaml             ; an objective camel
       ;; perl              ; write code no one else can comprehend
       ;; php               ; perl's insecure younger brother
       ;; plantuml          ; diagrams for confusing people more
       ;; purescript        ; javascript, but functional
       ;; qt                ; the 'cutest' gui framework ever
       ;; racket            ; a DSL for DSLs
       ;; rest              ; Emacs as a REST client
       ;; ruby              ; 1.step do {|i| p "Ruby is #{i.even? ? 'love' : 'life'}"}
       ;; rust              ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       ;; scala             ; java, but good
       ;; solidity          ; do you need a blockchain? No.
       ;; swift             ; who asked for emoji variables?
       ;; vala              ; GObjective-C

       ;; Applications are complex and opinionated modules that transform Emacs
       ;; toward a specific purpose. They may have additional dependencies and
       ;; should be loaded late.
       :app
       ;; (email +gmail)    ; emacs as an email client
       ;; irc               ; how neckbeards socialize
       ;; (rss +org)        ; emacs as an RSS reader
       ;; twitter           ; twitter client https://twitter.com/vnought
       ;; (write            ; emacs as a word processor (latex + org + markdown)
       ;;  +wordnut         ; wordnet (wn) search
       ;;  +langtool)       ; a proofreader (grammar/style check) for Emacs

       :collab
       ;; floobits          ; peer programming for a price
       ;; impatient-mode    ; show off code over HTTP

       :config
       ;; For literate config users. This will tangle+compile a config.org
       ;; literate config in your `doom-private-dir' whenever it changes.
       ;; literate

       ;; The default module sets reasonable defaults for Emacs. It also
       ;; provides a Spacemacs-inspired keybinding scheme and a smartparens
       ;; config. Use it as a reference for your own modules.
       (default +bindings +smartparens))
