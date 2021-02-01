#include <stdio.h>
#include <stdlib.h>
 
//#define LOG() printf("func here %s\n", __FUNCTION__)//注：两个短下划线_ _

#define LOG() printf("@ %s %s\n", __DATE__, __TIME__)

#define LOG2() printf("%s(%d)-%s:\n",__FILE__,__LINE__,__FUNCTION__)

#define DEBUGFMT  "%s(%d)-%s:"
#define DEBUGARGS __FILE__,__LINE__,__FUNCTION__
#define LOG3() printf(DEBUGFMT"\n",DEBUGARGS)

void func(){
    LOG();
    LOG3();
}  
 
int main(){
    LOG();
    LOG3();
    func();

    printf("%s\n",CT);
    //system("pause");
}
