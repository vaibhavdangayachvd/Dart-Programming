bool isAvailable=true;
main(){
  bool inMain=true;
  nestedFunction(){
    bool inNested=true;
    superNested(){
      bool inSuperNested=true;
      assert(isAvailable && inMain && inNested && inSuperNested);
      print('Test Successfull');
    }
    superNested();
  }
  nestedFunction();
}