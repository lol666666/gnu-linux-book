(TeX-add-style-hook
 "chapter03Vim"
 (lambda ()
   (LaTeX-add-labels
    "sec:vimUsage"
    "sec:vimMode"
    "tab:vimInsertMode"
    "tab:vimFangxiang"
    "fig:vimClipBoard"
    "fig:vimConf")
   (LaTeX-add-index-entries
    "vi编辑器"
    "vim编辑器"
    "\\LaTeX")))

