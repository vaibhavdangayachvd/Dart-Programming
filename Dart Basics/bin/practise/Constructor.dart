class Pavan{
  int x=10;
  Pavan(int x){
    this.x=x;
    print('In Pavan Default with $x');
  }
  Pavan.withInt(int n){
    print('In Pavan with $n');
  }
}
class Vaibhav extends Pavan{
  int x,y;
  Vaibhav():x=10,y=20,super(5){//Cant use this in right side of init or inside super
    print('In Vaibhav');
  }
}
main(){
  Vaibhav obj=Vaibhav();
}