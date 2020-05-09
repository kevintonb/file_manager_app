import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:filemanager/sizeconfig.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        Responsive().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Files App',
          home: MediaPage(),
        );
      });
    });
  }
}

class MediaPage extends StatefulWidget {
  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2c2c3c),
        leading: Padding(
          padding: EdgeInsets.only(
            top: 1.8 * Responsive.imageSizeMultiplier,
            left: 6 * Responsive.imageSizeMultiplier,
          ),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.grey[500],
            ),
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: 1.8 * Responsive.imageSizeMultiplier,
              right: 6 * Responsive.imageSizeMultiplier,
            ),
            child: Opacity(
              opacity: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.indigo[100],
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.indigo,
                    width: 0.25 * Responsive.imageSizeMultiplier,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(2.6 * Responsive.imageSizeMultiplier),
                  child: Icon(
                    Icons.person,
                    color: Colors.indigo,
                    size: 4.5 * Responsive.imageSizeMultiplier,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 0.33 * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFF2c2c3c),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30.0),
                bottomLeft: Radius.circular(30.0),
              )
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    right: 6 * Responsive.imageSizeMultiplier,
                    top: 6 * Responsive.imageSizeMultiplier,
                    left: 6 * Responsive.imageSizeMultiplier,
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(
                          right: 3 * Responsive.widthMultiplier,
                        ),
                        child: Image.asset(
                          "assets/video.png",
                          height: 3.4 * Responsive.textMultiplier,
                        ),
                      ),
                      Text(
                        "Media",
                        style: TextStyle(
                          fontSize: 3.4 * Responsive.textMultiplier,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.more_horiz,
                        size: 6 * Responsive.imageSizeMultiplier,
                        color: Colors.grey[500],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 6 * Responsive.imageSizeMultiplier,
                    left: 6 * Responsive.imageSizeMultiplier,
                    top: 10 * Responsive.imageSizeMultiplier,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "32.9",
                        style: TextStyle(
                          fontSize: 7.6 * Responsive.textMultiplier,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 0.57 * MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                top: 1 * Responsive.heightMultiplier,
                                left: 2 * Responsive.widthMultiplier,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Gb",
                                    style: TextStyle(
                                      color: Colors.grey[600]
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "223.1 Gb",
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 0.5 * Responsive.heightMultiplier,
                                left: 2 * Responsive.widthMultiplier,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    "Used",
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Free",
                                    style: TextStyle(
                                        color: Colors.grey[600]
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    right: 6 * Responsive.imageSizeMultiplier,
                    left: 6 * Responsive.imageSizeMultiplier,
                    top: 10 * Responsive.imageSizeMultiplier,
                  ),
                  child: Center(
                    child: LinearPercentIndicator(
                      width: 0.87 * MediaQuery.of(context).size.width,
                      lineHeight: 8.0,
                      percent: 0.2,
                      progressColor: Colors.greenAccent,
                      backgroundColor: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4 * Responsive.heightMultiplier,
              bottom: 2 * Responsive.heightMultiplier,
              left: 6 * Responsive.imageSizeMultiplier,
              right: 6 * Responsive.imageSizeMultiplier,
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 6 * Responsive.heightMultiplier,
                ),
                Text(
                  "Media Files",
                  style: TextStyle(
                    fontSize: 3.4 * Responsive.textMultiplier,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.more_horiz,
                  size: 6 * Responsive.imageSizeMultiplier,
                  color: Colors.grey[500],
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              _mediaListItem(
                  "Podcast with Brenda Evans",
                  Colors.amber[500],
                  Colors.amber[100],
                  "32Mb March 14, 2021",
                  Icons.library_music
              ),
              _mediaListItem(
                "Student Movies for March",
                Colors.amber[500],
                Colors.amber[100],
                "894Mb March 8, 2021",
                Icons.videocam
              ),
              _mediaListItem(
                "Childhood",
                Colors.amber[500],
                Colors.amber[100],
                "13.4Gb March 8, 2021",
                Icons.videocam
              ),
              _mediaListItem(
                "Podcast with Larry Taylor",
                Colors.amber[500],
                Colors.amber[100],
                "49Mb February 25, 2021",
                Icons.library_music,
              ),
              _mediaListItem(
                "Video Blog Youtube",
                Colors.amber[500],
                Colors.amber[100],
                "13.4Gb February 11, 2021",
                Icons.videocam
              ),
              _mediaListItem(
                "Podcast with Katherine Long",
                Colors.amber[500],
                Colors.amber[100],
                "72Mb February 11 ,2021",
                Icons.library_music,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _mediaListItem(String title, Color icon, Color accent, String meta, IconData mediaIcon){
    return Padding(
      padding: EdgeInsets.only(
        bottom:  2 * Responsive.heightMultiplier,
        left: 6 * Responsive.widthMultiplier,
      ),
      child: Row(
        children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: accent,
                borderRadius: BorderRadius.circular(6.8),
              ),
              child: Padding(
                padding: EdgeInsets.all( 3 * Responsive.imageSizeMultiplier),
                child: Icon(
                  mediaIcon,
                  size: 6 * Responsive.imageSizeMultiplier,
                  color: icon,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.0 * Responsive.widthMultiplier),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 2.3 * Responsive.textMultiplier,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(
                  height: 0.5 * Responsive.heightMultiplier,
                ),
                Text(
                  meta,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 1.8 * Responsive.textMultiplier,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}