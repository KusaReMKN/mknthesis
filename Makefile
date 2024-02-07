.PHONY: all clean distclean

all: mknthesis.sty mknthesis.pdf

mknthesis.sty: mknthesis.dtx mknthesis.ins
	uplatex mknthesis.ins

mknthesis.pdf: mknthesis.dtx
	ptex2pdf -l -u mknthesis.dtx
	ptex2pdf -l -u mknthesis.dtx

clean:
	rm -f mknthesis.aux mknthesis.hd mknthesis.log mknthesis.out

distclean: clean
	rm -f mknthesis.sty mknthesis.pdf
