(TeX-add-style-hook
 "passive_filters"
 (lambda ()
   (TeX-run-style-hooks
    "../tex/fig_header"
    "../tex/ckt_lib"))
 :latex)

