import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('GitHub Perfil'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('images/perfil.jpg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'José da Silva Vieira',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'jsvieira',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[100],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.map,
                            size: 20
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('Brazil, São Paulo, SP'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.message,
                            size: 20
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('jsilvavieira@github.com'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.people,
                            size: 20
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('32 seguidores'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text('45 seguindo'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text('José da Silva Vieira'),
                  accountEmail: Text('jsilvavieira@github.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/perfil.jpg'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text('Perfil'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Repositórios'),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Favoritos'),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
        ));
  }
}
