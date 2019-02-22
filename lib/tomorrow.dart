import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Tomorrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: TomorrowPage(),
    );
  }
}

class TomorrowPage extends StatefulWidget {
  @override
  _TomorrowPageState createState() => _TomorrowPageState();
}

class _TomorrowPageState extends State<TomorrowPage> {

  Material myItems (IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 12.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(14.0),
      child: new Center(
        child: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new Text(heading,
                        style: new TextStyle(
                          color: new Color(color),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: new Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: new Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          myItems(Icons.graphic_eq, 'Historic Data Visuals', 0xffed622b),
          myItems(Icons.graphic_eq, 'Should you visit?', 0xff26cb3c),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 350.0),
          StaggeredTile.extent(2, 270.0),
        ],
      ),
    );
  }
}

