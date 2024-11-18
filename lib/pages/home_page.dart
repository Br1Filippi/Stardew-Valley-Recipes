import 'package:flutter/material.dart';
import 'package:stardewvalleyrecipes/tabs/mis_recetas_tab.dart';
import 'package:stardewvalleyrecipes/tabs/recetas_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsets.all(6),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFDDA059),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Color(0xFF6B3710), width: 3),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          title: Container(
            margin: EdgeInsets.only(left: 47),
            child: Text(
              'Stardew Valley Recipes',
              style: TextStyle(
                color: Color(0xFFDDA059),
                fontFamily: 'StardewValley',
                fontSize: 28,
              ),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/FondoAppbar1.jpg'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          bottom: TabBar(
            indicatorColor: Color(0xFFB52121),
            labelStyle: TextStyle(fontFamily: 'StardewValley', fontSize: 20),
            labelColor: Color(0xFFDDA059),
            unselectedLabelColor: Color(0xFFDDA059),
            tabs: [
              Tab(
                text: 'Recetas',
              ),
              Tab(
                text: 'Mis Recetas',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [RecetasTab(), MisRecetasTab()],
        ),
      ),
    );
  }
}
