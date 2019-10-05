(TeX-add-style-hook
 "chapter01SystemIntro"
 (lambda ()
   (LaTeX-add-labels
    "part1"
    "part1:chap1"
    "part1:chap1:sec:gnuPlan"
    "fig:UnixTopo"
    "subsec:picView"
    "fig:meituxinshang"
    "sec:thisOS")
   (LaTeX-add-index-entries
    "GNU"
    "Emacs"
    "Linux"
    "Minix"
    "GNU计划"
    "\\TeX")))

