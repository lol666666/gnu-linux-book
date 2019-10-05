(TeX-add-style-hook
 "sourceCode"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "CJK")
   (LaTeX-add-labels
    "chap:sourceCode")))

