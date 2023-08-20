all:
	@echo "make pvsio | clean | gold"

pvsio:
	-pvsio-regression pvsio_examples
	-pvsio-regression stdstr_examples

gold:
	pvsio-regression pvsio_examples --force
	pvsio-regression stdstr_examples --force

clean:
	rm -f *.mold *.log *.tmp *.out *~
