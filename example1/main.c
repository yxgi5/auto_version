#include <stdio.h>
#include "auto_version.h"
#include "version.h"
 
#define TEST (__FILE__" "__TIME__) /*这个括号没有也行的*/

int main(int argc,char *argv[])
{
    printf("%d\n", __LINE__);
    printf("%s\n", __TIME__);
    printf("%s\n", __DATE__);
    printf("%s\n", __FILE__);

#ifdef VER_AUTO
	printf("============================\n");
	printf("Soft version:%s\n",VERSION);
	printf("compile date:%s\n",DATE);
	printf("============================\n");
#else
	printf("============================\n");
	printf("creat by ZhongKunjiang\n");
	printf("mail:zhongkunjiang@hotmail.com\n");
	printf("============================\n");
#endif	
	printf(TEST);printf("\n");
	printf("%s\n",Version);
	return 0;
}
