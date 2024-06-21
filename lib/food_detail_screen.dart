import 'package:flutter/material.dart';
import 'package:recipes_mecy/models/model_recipes.dart';
import 'package:recipes_mecy/widgets/ingredientes_screen.dart';
import 'package:recipes_mecy/widgets/preparacion_screen.dart';

class FoodDetailScreen extends StatelessWidget {
  final Food food;

  const FoodDetailScreen({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 80,
              ),
              Text(
                food.name,
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  height: 180,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xffBBA63B),
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12, spreadRadius: 3, blurRadius: 6)
                    ],
                  ),
                  child: Image.asset(food.imgitem),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Column(
                  children: [
                    Material(
                      color: const Color(0xff5CA8C9),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      IngredientesScreen(food: food)));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 35),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/ingreicon.png"),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Ingredientes",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: const Color(0xff5CA8C9),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PreparacionScreen(food: food)));
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 35),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/prepaicon.png",
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Preparacion",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
