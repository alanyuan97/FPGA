#include <iostream>
using namespace std;

void numadd(int a , int b , int* y);

int main(){
int a =1;
int b=2;
int y;
numadd(a,b,&y);

cout<<y<<endl;
return 0;
}
