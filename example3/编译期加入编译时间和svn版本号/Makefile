OBJS = main.o
$(warning is $(OBJS))

CT="\"`date '+%Y-%m-%d %H:%M:%S'`"\"

main:$(OBJS)
	@echo "开始生成最终执行文件，请稍候..."
	@echo -e "Full Version is:\033[31m\033[1m v1.0 \033[0m";
	gcc main.o -o main

main.o:main.c
	gcc -g -c main.c -DCT=$(CT) -o main.o

clean:
	rm main.o main

debug:
	@echo $(OBJS)
	$(warning is $(OBJS))
