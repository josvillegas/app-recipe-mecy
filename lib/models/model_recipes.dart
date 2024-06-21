//Receta por cada madre - exam:elva, pallares, feli, etc
class Recipe {
  final String img;
  final String name;
  final List<Category> categories;

  Recipe({required this.name, required this.img, required this.categories});
}

//Recetas por categoria - exam: desayunos, almuerzos, cenas, postres, etc
class Category {
  final String name;
  final String img;
  final List<Food> foods;

  Category({required this.name, required this.img, required this.foods});
}

// Recetas por comida - exam: arroz con pollo, chaufa, seco, etc
class Food {
  final String name;
  final String img;
  final String imgitem;
  final List<Detail> details;

  Food(
      {required this.name,
      required this.img,
      required this.imgitem,
      required this.details});
}

// Recetas detalles - exam: forma de preparar y sus ingredientes
class Detail {
  List<String> ingre;
  List<String> prepa;
  Detail(this.ingre, this.prepa);
}
