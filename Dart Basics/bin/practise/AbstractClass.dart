abstract class Vaibhav{
  Vaibhav._();
  void say();
  factory Vaibhav(String type){
    switch(type.toLowerCase()){
      case 'harsh':
        return Harsh();
        break;
      case 'shivam':
        return Shivam();
        break;
      default:
        return null;
    }
  }
}

class Shivam extends Vaibhav {
  Shivam():super._();

  @override
  void say() {
    print('I am Shivam');
  }
}
class Harsh extends Vaibhav{
  Harsh():super._();

  @override
  void say() {
    print('I am Harsh');
  }
}
void main(){
  var obj=Vaibhav('Harsh');
  obj?.say();
}