.SUFFIXES:
.SUFFIXES: .java .class

.PHONY: dist clean

dist: Application.jar index.html
	mkdir -p dist
	cp $^ dist/

Application.jar: Main.class
	jar -cf $@ $^

.java.class:
	javac $<

clean:
	$(RM) Application.jar Main.class
	$(RM) -r dist/
