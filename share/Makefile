ORIGINAL := desumasu-converter.base
NAME     := dearu desumasu
BASE     := $(NAME:=.base)
DEFAULT  := $(NAME:=.dict)
KEEP     := $(NAME:=-keep-ne.dict)
IGNORE   := $(NAME:=-ignore-ne.dict)
ALL      := $(BASE) $(DEFAULT) $(KEEP) $(IGNORE)

all: $(ALL)

clean:
	rm -f $(ALL)

PERL=perl -CSDA -Mutf8
BOUNDARY=\\b
BOUNDARY=(?=[。、（）()])
BOUNDARY=(?=\\pP)

dearu.base: $(ORIGINAL) reorder.pl Makefile
	$(PERL) reorder.pl $< > $@

desumasu.base: $(ORIGINAL) reorder.pl Makefile
	awk '{ print $$2 "  " $$1 }' $< | column -t | perl reorder.pl > $@

%.dict: %.base Makefile
	$(PERL) -p -E 's/(?=\s)/ね?$(BOUNDARY)/' $< > $@

%-keep-ne.dict: %.base Makefile
	$(PERL) -p -E 's/(?=\s)/(?=ね?$(BOUNDARY))/' $< > $@

%-ignore-ne.dict: %.base Makefile
	$(PERL) -p -E 's/(?=\s)/$(BOUNDARY)/' $< > $@
