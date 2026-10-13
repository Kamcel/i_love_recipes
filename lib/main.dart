import 'package:flutter/material.dart';
import 'package:i_love_recipes/recipe.dart';

void main() {
  runApp(const ILoveRecipes());
}

class ILoveRecipes extends StatelessWidget {
  const ILoveRecipes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      title: 'I love Recipes',
      theme: theme.copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const MyHomePage(title: 'I Love Recipes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Recipe.sampleRecipes.length,
          itemBuilder: (BuildContext context, int index) {
            //TODO: Update to return Recipe card
            return Text(Recipe.sampleRecipes[index].label);
          },
        ),
      ),
    );
  }

  // Widget buildReceipeCard(Recipe recipe) {
  //   return Card(
  //     child: Column(
  //       children: <Widget>[
  //         Image(image: AssetImage(recipe.imageUrl)),
  //         Text(recipe.label),
  //       ],
  //     ),
  //   );
  // }
}
