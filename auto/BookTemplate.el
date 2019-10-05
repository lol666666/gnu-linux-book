(TeX-add-style-hook
 "BookTemplate"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ctexbook" "11pt" "a4paper" "fancyhdr" "hyperref" "openany")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "top=2.1cm" "bottom=2.1cm") ("caption" "labelfont=bf" "labelsep=quad") ("background" "firstpage=true")))
   (add-to-list 'LaTeX-verbatim-environments-local "VerbatimOut")
   (add-to-list 'LaTeX-verbatim-environments-local "SaveVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "LVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "BVerbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "Verbatim")
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "Verb")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "latex2e"
    "body/chapter01SystemIntro"
    "body/chapter02BasicCommand"
    "body/chapter03Vim"
    "body/chapter04RegularExpression"
    "body/chapter05Awk"
    "body/chapter06Sed"
    "body/chapter07Shell"
    "body/chapter09MySQL"
    "body/chapter10SomeServices"
    "body/chapter11HighAvailable"
    "body/chapter12Automatic"
    "body/chapterGit"
    "body/chapterVirtualization"
    "body/chapterNetwork"
    "body/sourceCode"
    "ctexbook"
    "ctexbook11"
    "geometry"
    "caption"
    "longtable"
    "tabularx"
    "booktabs"
    "listings"
    "xcolor"
    "tikz"
    "enumitem"
    "graphicx"
    "subfig"
    "verbatim"
    "fancyvrb"
    "makeidx"
    "lipsum"
    "background")
   (TeX-add-symbols
    "oldfboxsep"
    "reflect"
    "XeTeX")
   (LaTeX-add-environments
    '("fdemo" 1)
    "mycode"
    "myoutput"
    "code"
    "halfcode"
    "out"
    "demo")
   (LaTeX-add-bibliographies
    "mybib")
   (LaTeX-add-saveboxes
    "mybox")
   (LaTeX-add-caption-DeclareCaptions
    '("\\DeclareCaptionFont{kai}" "Font" "kai"))))

