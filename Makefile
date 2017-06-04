kano.d64: kface.prg
	c1541 -attach kano.d64 -delete kface
	c1541 -attach kano.d64 -write kface.prg kface

kface.prg: kface.bas
	petcat -2 -w2 -l 0801 -o kface.prg -- kface.bas

clean:
	rm -f kface.prg
