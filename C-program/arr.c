#include<stdio.h>

int main() {
    int i = 0;
    int empID[5];
    empID[0]=10280;
    empID[1]=10260;
    empID[2]=10270;
    empID[3]=10285;

    for (i=0; i<4; i++) {
        printf("%d \n", empID[i]);
    }
    return 0;
}
