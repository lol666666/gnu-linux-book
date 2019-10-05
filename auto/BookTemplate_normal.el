(TeX-add-style-hook
 "BookTemplate_normal"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ctexbook" "11pt" "a4paper" "fancyhdr" "hyperref" "openright")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "top=2.1cm" "bottom=2.1cm") ("caption" "labelfont=bf" "labelsep=quad") ("background" "firstpage=true")))
   (TeX-run-style-hooks
    "latex2e"
    "body/chapter01SystemIntro"
    "body/chapter02BasicCommand"
    "body/chapter03Vim"
    "body/chapter07Shell"
    "body/chapter09MySQL"
    "body/chapter10SomeServices"
    "body/chapter11HighAvailable"
    "body/chapterMonitor"
    "body/chapter12Automatic"
    "body/chapter13Git"
    "body/chapter14Virtualization"
    "body/chapter15Network"
    "body/chapter16Source"
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
    "oldfboxsep")
   (LaTeX-add-environments
    "mycode"
    "myoutput"
    "code"
    "halfcode"
    "out")
   (LaTeX-add-bibliographies
    "body/mybib")
   (LaTeX-add-saveboxes
    "mybox"))
 :latex)

