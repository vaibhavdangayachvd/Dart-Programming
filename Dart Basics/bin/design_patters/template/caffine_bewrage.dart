abstract class CaffeineDrink {
  void makeDrink() {
    boil();
    addCondiments();
    addSugar();
    pour();
  }

  void boil() {
    print('Boiling');
  }

  void pour() {
    print('Pouring');
  }

  void addSugar() {
    if (wantSugar) {
      print('Adding Sugar');
    }
  }

  void addCondiments();

  bool get wantSugar => true;
}
