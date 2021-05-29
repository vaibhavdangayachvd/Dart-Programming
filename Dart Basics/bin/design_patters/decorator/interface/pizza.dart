enum Size { Small, Medium, Large}

abstract class Pizza {
  Size get size;
  num get cost;
  String get description;
  const Pizza();
}
