all:
	@echo "make pvsio | clean | gold"

pvsio:
	-pvsio-regression pvsio_examples
	-pvsio-regression stdstr_examples
	-pvsio-regression stdmutable_examples
	-pvsio-regression csv_util_examples
	-pvsio-regression csv_examples

gold:
	-pvsio-regression pvsio_examples --force
	-pvsio-regression stdstr_examples --force
	-pvsio-regression stdmutable_examples --force
	-pvsio-regression csv_util_examples --force
	-pvsio-regression csv_examples --force

clean:
	rm -f *.mold *.log *.tmp *.out *~ orphaned-proofs.prf
