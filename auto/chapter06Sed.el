(TeX-add-style-hook
 "chapter06Sed"
 (lambda ()
   (LaTeX-add-labels
    "chap:sed"
    "fig:sed_workflow"
    "sec:sedPattern"
    "subsec:sedVariableDef"
    "sec:sedSpecialVariable"
    "sec:sedArray"
    "sec:sedDelete"
    "sec:appendInsertChange"
    "sec:patternSpace"
    "sec:flowControl"
    "sec:addrSpace"
    "sec:callExternalVariable"
    "sec:summary")
   (LaTeX-add-index-entries
    "sed")))

