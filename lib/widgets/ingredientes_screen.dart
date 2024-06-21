import 'package:flutter/material.dart';
import 'package:recipes_mecy/models/model_recipes.dart';

class IngredientesScreen extends StatefulWidget {
  final Food food;

  const IngredientesScreen({super.key, required this.food});

  @override
  State<IngredientesScreen> createState() => _IngredientesScreenState();
}

class _IngredientesScreenState extends State<IngredientesScreen> {
  int currentDetails = 0;
  @override
  Widget build(BuildContext context) {
    final Detail currentDeta = widget.food.details[currentDetails];
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xff5CA8C9),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              const Center(
                child: Text(
                  "INGREDIENTES",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 1,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    ...currentDeta.ingre.asMap().entries.map((entry) {
                      final option = entry.value;
                      return Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 5),
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        decoration: const BoxDecoration(),
                        child: Center(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '\u2022 $option',
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
