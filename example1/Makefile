VERSION = $(shell ./buildnum.sh)
VERSION_STRING := "V1.01"
DATE_STRING := `date "+20%y.%m.%d %k:%M"`
 
.PHONY:all
all:test
test:main.o version.o auto_version.h
	gcc $^ -o $@
 
main.o:main.c auto_version.h

version.cc:
	${VERSION}

version.o:version.cc version.h
 
auto_version.h:
	`touch auto_version.h`
	@echo "#define VER_AUTO 1" > auto_version.h                         # > :覆盖文本原来内容
	@echo "#define VERSION \"$(VERSION_STRING)\"" >> auto_version.h     # >> :追加内容到文本末尾
	@echo "#define DATE \"$(DATE_STRING)\""	>> auto_version.h           # >> :追加内容到文本末尾
	@echo ${VERSION}
	
clean:
	rm -f auto_version.h test main.o version.cc version.o
