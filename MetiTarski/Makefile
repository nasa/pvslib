.PHONY: none z3 metit lib all dist metit-dist

arch=$(shell uname -s)-$(shell arch)

none:
	@echo "make z3 | metit | lib | all"
	@echo "ARCH: $(arch)"
	@echo "Z3_DIR: $(Z3_DIR)"
	@echo "METIT_DIR: $(METIT_DIR)"
	@echo "METIT_LIB: $(METIT_LIB)"

z3:
	rsync $(Z3_DIR)/build/z3 dist/bin/$(arch) 

metit:  
	cd $(METIT_DIR);PATH=$(GCC42DIR):$(PATH) make build
	rsync $(METIT_DIR)/metit dist/bin/$(arch) 
	dist/bin/$(arch)/metit --version

lib:
	rsync -l $(METIT_LIB)/libpolyml.so* dist/lib/$(arch)
	rsync -l $(METIT_LIB)/libgmp.so* dist/lib/$(arch)

dist:
	@echo "PVS -- MetiTarski Integration"
	rsync -av --exclude .svn --exclude .hg $(METIT_DIR)/tptp/Axioms dist/tptp
	rsync $(METIT_DIR)/MIT-LICENSE dist/METIT-LICENSE.txt
	rsync $(METIT_DIR)/RELEASE-NOTES.txt dist
	rsync $(METIT_DIR)/README.txt dist
	rsync $(METIT_DIR)/README_BINARY.txt dist
	rsync $(Z3_DIR)/LICENSE.txt dist/Z3-LICENSE.txt

metit-dist: 
	@- $(foreach ARCH,$(shell ls dist/bin),\
          echo "MetiTarski Binary Distribution ($(ARCH))";\
          rsync dist/*.txt metit-dist/$(ARCH);\
          rsync dist/bin/$(ARCH)/* metit-dist/$(ARCH)/bin;\
          rsync -l dist/lib/$(ARCH)/* metit-dist/$(ARCH)/lib;\
          rsync -av --exclude .svn --exclude .hg $(METIT_DIR)/tptp metit-dist/$(ARCH);\
          rsync -av --exclude .svn --exclude .hg $(METIT_DIR)/scripts metit-dist/$(ARCH);\
        )

clean:
	-rm *.tptp
	-rm simple_test.summary
#	rsync bin/Linux-x86_64/* metit-dist/Linux-x86_64/bin
#	rsync -l lib/Linux-x86_64/* metit-dist/Linux-x86_64/lib
#	metit-dist/$(arch)/metit --version

all: z3 metit lib
