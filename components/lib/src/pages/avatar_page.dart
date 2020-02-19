import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage ('https://ae01.alicdn.com/kf/HLB1PcpkaiYrK1Rjy0Fdq6ACvVXaB/Full-Drill-Square-Comics-Stan-Lee-Diamond-Painting-Kit-DIY-Cross-Stitch-Rhinestone-Mosaic.jpg'),
              radius: 25.0,
            ),
          ),

          Container(
              margin: EdgeInsets.only(right: 20.0),
              child: CircleAvatar(
                child: Text("SL"),
                backgroundColor: Colors.lightGreenAccent ,
              )
          )
        ],

      ),
      body: Center(
        child: FadeInImage(

          image: NetworkImage('https://hdqwalls.com/download/marvel-stan-lee-4k-4x-1600x1200.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif') ,
          fadeInDuration: Duration(milliseconds: 200),
        )
      )


    );
  }
}
