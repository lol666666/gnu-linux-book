(TeX-add-style-hook
 "chapter07Shell"
 (lambda ()
   (LaTeX-add-labels
    "sec:shellScript"
    "fig:for_workflow"
    "fig:do_workflow"
    "fig:while_workflow")
   (LaTeX-add-index-entries
    "bash")))

