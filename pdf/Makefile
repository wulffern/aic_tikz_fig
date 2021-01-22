######################################################################
##        Copyright (c) 2020 Carsten Wulff Software, Norway 
## ###################################################################
## Created       : wulff at 2020-1-17
## ###################################################################
##  The MIT License (MIT)
## 
##  Permission is hereby granted, free of charge, to any person obtaining a copy
##  of this software and associated documentation files (the "Software"), to deal
##  in the Software without restriction, including without limitation the rights
##  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
##  copies of the Software, and to permit persons to whom the Software is
##  furnished to do so, subject to the following conditions:
## 
##  The above copyright notice and this permission notice shall be included in all
##  copies or substantial portions of the Software.
## 
##  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
##  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
##  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
##  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
##  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
##  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
##  SOFTWARE.
##  
######################################################################


FIG=fig_active_complex \
	fig_active_complex_many \
	fig_active_filter \
	fig_feedback \
	fig_ota_cm \
	fig_passive_filter \
	fig_simple_filter 


one:
	${MAKE} eps  FILE=${FILE}

all:
	$(foreach f, ${FIG}, ${MAKE} one FILE=${f};)


eps:
	latex ../tex/${FILE}.tex
	dvips -E ${FILE}.dvi -o ${FILE}_temp.eps
	epstool --copy --bbox  ${FILE}_temp.eps ${FILE}_perl.eps
	cat ${FILE}_perl.eps | perl -e '$$replace=0;while(<>){if(m/%%BoundingBox: -2411/ig){s/-2411/0/ig;$$replace=1;};if($$replace){s/(%%HiResBoundingBox:) ([^\s+]+)\s+/$$1 0 $$2 /ig;};print $$_;}' > ${FILE}.eps
	rm ${FILE}_temp.eps  ${FILE}_perl.eps
	epstopdf ${FILE}.eps -o ../pdf/${FILE}.pdf


clean:
	-rm *.bbl
	-rm *.aux
	-rm *.log
	-rm *.blg
	-rm *.dvi
	-rm *.pdf
	-rm *.eps
