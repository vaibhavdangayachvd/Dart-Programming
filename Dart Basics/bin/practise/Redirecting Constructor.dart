class Vaibhav{
  Vaibhav(int a,int b){
    print(a+b);
  }
  Vaibhav.addTwo(int a):this(a,2);
}
void main(){
  Vaibhav.addTwo(3);
}