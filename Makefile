# Minimal makefile for m4 website processing
TARGET := ../index.html
LIBS := libcommon.m4 libhtml.m4 libresume.m4 defs.m4

all: clean $(TARGET)

backup:
	cp $(TARGET) $(TARGET).bak

$(TARGET):index.m4 $(LIBS)
	@m4 $< > $@

clean:
	@echo 'cleaned'
	@rm -f $(TARGET)

.PHONY: all clean
