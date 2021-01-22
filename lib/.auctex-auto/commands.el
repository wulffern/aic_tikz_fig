(TeX-add-style-hook
 "commands"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (TeX-run-style-hooks
    "upgreek"
    "amssymb"
    "amsmath"
    "cite"
    "verbatim"
    "listings"
    "xcolor"
    "flafter"
    "booktabs"
    "url"
    ""
    "textcomp")
   (TeX-add-symbols
    '("eqn" 1)
    '("moved" 1)
    '("deleted" 1)
    '("secedit" 1)
    '("edit" 1)
    '("missing" 1)
    '("req" 1)
    '("reg" 2)
    "myfigwidtha"
    "myfigwidthl"
    "myfigwidthc"
    "myfigname"
    "SD"
    "JSONnumbervaluestyle"
    "JSONstringvaluestyle"
    "processColon")
   (LaTeX-add-listings-lstdefinestyles
    "json")
   (LaTeX-add-xcolor-definecolors
    "armygreen"))
 :latex)

