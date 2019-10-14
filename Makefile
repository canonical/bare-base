#!/usr/bin/make -f

DIRS := dev etc home lib/modules media proc root \
	run/media run/netns \
	snap sys tmp \
	usr/bin usr/lib/snapd usr/src \
	var/lib/snapd var/log var/snap var/tmp

install:
	$(foreach dir,$(DIRS),mkdir -p $(DESTDIR)/$(dir);)

clean:
	rm -rf $(DESTDIR)
