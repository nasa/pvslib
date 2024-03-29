all:
	@echo "make pvsio | clean | gold"

pvsio:
	-pvsio-regression pvsio_examples
	-pvsio-regression stdstr_examples
	-pvsio-regression stdmutable_examples
	-pvsio-regression stdio_examples
	-pvsio-regression double_approx
	-pvsio-regression fast_approx
	-pvsio-regression csv_utils_examples
	-pvsio-regression csv_examples
	-pvsio-regression kv_examples

gold:
	-pvsio-regression pvsio_examples --force
	-pvsio-regression stdstr_examples --force
	-pvsio-regression stdmutable_examples --force
	-pvsio-regression stdio_examples --force
	-pvsio-regression double_approx --force
	-pvsio-regression fast_approx --force
	-pvsio-regression csv_utils_examples --force
	-pvsio-regression csv_examples --force
	-pvsio-regression kv_examples --force

clean:
	rm -f *.mold *.log *.tmp *.out *.bak *.io *~ orphaned-proofs.prf
