import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.pink, brightness: Brightness.dark),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget _buildItem(BuildContext context, int index) {
    return Card(
      child: Center(
        child: Text(
          'Item $index',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Number of columns in the grid
        ),
        itemCount: _counter, // Number of items in the grid
        itemBuilder: (context, index) => _buildItem(context, index),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Post {
  final int id;
  final String description;

  const Post({required this.id, required this.description});
}

class Folder {
  final List<Folder> childfolderList;
  final List<Post> postList;

  const Folder({required this.childfolderList, required this.postList});
}

class Module {
  final int id;
  final String name;
  final String description;
  final String thumbnailPath;
  final String pagePath;
  final List<Folder> folderList;

  // iffy data type
  final String year;

  const Module(
      {required this.id,
      required this.name,
      required this.description,
      required this.thumbnailPath,
      required this.pagePath,
      required this.year,
      required this.folderList});
}
