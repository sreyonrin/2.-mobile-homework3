import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(Demo());

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Basic Mobile Apps"),
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            actions: <Widget>[
              Icon(
                Icons.group,
                color: Colors.white,
              )
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.favorite),
                ),
                Tab(
                  icon: Icon(Icons.share),
                ),
                Tab(
                  icon: Icon(Icons.group),
                ),
                Tab(
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Center(
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundImage: NetworkImage(
                          "https://stmed.net/sites/default/files/davika-hoorne-wallpapers-26603-3870348.jpg"),
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.green),
                ),
                ListTile(
                  title: Text("Home"),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.person),
                ),
                ListTile(
                  title: Text("Context"),
                  leading: Icon(Icons.call),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Image.network(
                  "https://media-spiceee.net/uploads/content/image/2575556/large_f7f61727-8b40-45d8-a31c-bb0dcbe2726f.jpg"),
              Image.network(
                  "https://pm1.narvii.com/6035/f2d10a6a239ee843dfbd4a00b6ffcc74fab611a8_hq.jpg"),
              Image.network(
                  "https://4.bp.blogspot.com/-WMZDhyBVkvg/Wx6NwT3IC6I/AAAAAAAAEJM/ehcmghyD-uwtt7lcBJ_uMvNepAsvdkGtgCLcBGAs/s620/Thai-actresses-Thai-model-Thai-girl-davika-hoorne-nice-photos%2B%25288%2529.jpg"),
              Image.network(
                  "https://i.ytimg.com/vi/vcZVJG-HfOg/hqdefault.jpg"),
            ],
          ),
          
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            overlayColor: Colors.pink[800],
            overlayOpacity: 0.3,
            children: [
              SpeedDialChild(
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
                backgroundColor: Colors.orange,
                label: "Message",
                labelBackgroundColor: Colors.orange,
              ),
              SpeedDialChild(
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                backgroundColor: Colors.red,
                label: "Sharing",
                labelBackgroundColor: Colors.red,
              ),
              SpeedDialChild(
                child: Icon(
                  Icons.attach_file,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
                label: "Attach File",
                labelBackgroundColor: Colors.green,
              ),
              SpeedDialChild(
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                backgroundColor: Colors.blue,
                label: "Love You",
                labelBackgroundColor: Colors.blue,
              ),
              SpeedDialChild(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                backgroundColor: Colors.pink,
                label: "Friends",
                labelBackgroundColor: Colors.pink,
                labelStyle: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.home,color: Colors.green,),),
                  IconButton(icon: Icon(Icons.thumb_up,color: Colors.red,),),
                  IconButton(icon: Icon(Icons.thumb_down,color: Colors.red,),),
                  IconButton(icon: Icon(Icons.share,color: Colors.blue,),),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
