(TeX-add-style-hook
 "fig_passive_filter"
 (lambda ()
   (TeX-run-style-hooks
    "../tex/fig_header"
    "../tex/ckt_lib"))
 :latex)

