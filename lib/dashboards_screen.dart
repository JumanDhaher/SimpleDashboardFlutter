import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DashboardsScreen extends StatelessWidget {
  Material myItems(IconData icon, String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        heading,
                        style: TextStyle(color: Color(color), fontSize: 20),
                      ),
                    ),
                  ),
                  Material(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(
                        icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboards'),
      ),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          myItems(Icons.graphic_eq, 'TotalViews', 0xffed622b),
          myItems(Icons.bookmark, 'Bookmark', 0Xff26cb3b),
          myItems(Icons.notifications, 'Notification', 0Xffff3266),
          myItems(Icons.attach_money, 'Balance', 0Xff3399fe),
          myItems(Icons.settings, 'Settings', 0Xfff4c83f),
          myItems(Icons.group_work, 'Group Work', 0Xff622F74),
          myItems(Icons.favorite, 'Followers', 0xffad61f1),
          myItems(Icons.message, 'Message', 0Xff7297ff),
        ],
        staggeredTiles: [
          StaggeredTile.extent(2, 130.0),
          StaggeredTile.extent(1, 250.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(1, 150.0),
          StaggeredTile.extent(1, 130.0),
          StaggeredTile.extent(2, 240.0),
          StaggeredTile.extent(2, 120.0),
        ],
      ),
    );
  }
}
