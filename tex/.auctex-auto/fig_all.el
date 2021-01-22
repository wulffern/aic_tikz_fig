(TeX-add-style-hook
 "fig_all"
 (lambda ()
   (TeX-run-style-hooks
    "../tex/fig_header"
    "../tex/ckt_lib"))
 :latex)

