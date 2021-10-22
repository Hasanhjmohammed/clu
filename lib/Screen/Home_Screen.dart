import 'package:clu/widget/room_card.dart';
import 'package:clu/widget/userprofil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../data.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("clu_hose"),
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
           Icons.search,
            size: 28,
          ),
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.envelope_open,
              size: 28,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.calendar,
              size: 28,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              CupertinoIcons.bell,
              size: 28,
            ),
            onPressed: (){},
          ),
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: UserProfil(Imageurl:currentUser.imageURL,size: 34,),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
               ... roomList.map((e) => RoomCard(room:e)),
              ],
            ),
          ),
          Positioned(
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [
                    Theme.of(context).scaffoldBackgroundColor.withOpacity(0.5),
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
           bottom: 30,
            child: ElevatedButton.icon(onPressed:(){},
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).accentColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
              ),
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(CupertinoIcons.add),
              ),
              label: Text("new room"),),
          ),
        ],
      ),
    );
  }
}
