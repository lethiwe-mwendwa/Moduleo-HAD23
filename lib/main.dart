import 'package:flutter/material.dart';
import 'widgets/date_header_widget.dart';
import 'widgets/grid_item_widget.dart';
import 'widgets/bottom_nav_bar.dart';
import 'widgets/calendar_info_widget.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: _buildThemeData(),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
      );

  ThemeData _buildThemeData() => ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      );
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const DateHeaderWidget(),
              _buildGridView(),
            ],
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomNavBar(),
        bottomSheet: const CalendarInfoWidget(),
      );

  Widget _buildGridView() => Expanded(
        child: LayoutBuilder(
          builder: (context, constraints) => GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: _counter,
            itemBuilder: (context, index) => GridItemWidget(index: index),
          ),
        ),
      );

  Widget _buildFloatingActionButton() => FloatingActionButton(
        onPressed: () => setState(() => _counter++),
        tooltip: 'Add Item',
        child: const Icon(Icons.add),
      );
}
