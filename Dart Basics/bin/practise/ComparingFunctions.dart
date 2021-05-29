void say1(){}
void say2(){}
int main(){
  var x=say1;
  assert(x==say1 && say1!=say2);
}