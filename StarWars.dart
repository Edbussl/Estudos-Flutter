import 'package:flutter/material.dart';

void main() {
  runApp(StarWarsApp());
}

class StarWarsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Star Wars Galaxy',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        fontFamily: 'StarJedi', // Certifique-se de adicionar a fonte no pubspec.yaml
      ),
      home: StarWarsHomePage(),
    );
  }
}

class StarWarsHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Star Wars Galaxy',
          style: TextStyle(color: Colors.yellowAccent),
        ),
        backgroundColor: Colors.black,
        leading: Icon(Icons.star, color: Colors.yellowAccent),
        actions: [
          IconButton(icon: Icon(Icons.home, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.people, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.movie, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.flight, color: Colors.white), onPressed: () {}),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/space_background.jpg"), // Adicione sua imagem em assets
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            _buildCard("Personagens Icônicos", "assets/images/luke.png", "Conheça os heróis e vilões da galáxia!"),
            SizedBox(height: 16),
            _buildCard("Naves Espaciais", "assets/images/millennium_falcon.png", "Veja as incríveis naves usadas nas batalhas."),
            SizedBox(height: 16),
            _buildCard("Linha do Tempo dos Filmes", "assets/images/star_wars_logo.png", "Explore a jornada épica dos episódios!"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.yellowAccent,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Personagens',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Filmes',
          ),
        ],
      ),
    );
  }

  Widget _buildCard(String title, String imagePath, String description) {
    return Card(
      color: Colors.black.withOpacity(0.7),
      child: Column(
        children: [
          Image.asset(imagePath, height: 150),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellowAccent,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
