(TeX-add-style-hook
 "chapter05Awk"
 (lambda ()
   (LaTeX-add-labels
    "sec:awk"
    "fig:awk_workflow"
    "sec:FirstAwk"
    "sec:FieldRecordAwk"
    "subsec:WhileLoop"
    "subsec:ForLoop")
   (LaTeX-add-index-entries
    "awk")))

