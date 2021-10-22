import 'dart:math';
import 'package:clu/models/room.dart';
import 'package:clu/widget/roomuserprofil.dart';
import 'package:clu/widget/userprofil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data.dart';
class RoomScreen extends StatelessWidget {
  @override

  final Room room;

  const RoomScreen({Key key, @required this.room}) : super(key: key);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 300,
        //title: Text("clu_hose"),
        elevation: 0.0,
        leading: TextButton.icon(
          style: TextButton.styleFrom(
            primary: Colors.black,
          ),
            onPressed: () {Navigator.of(context).pop();},
            icon: Icon(Icons.keyboard_arrow_down_outlined),
            label: Text("return "
            ,style: TextStyle(
                fontSize: 20
              ),)),
        actions: [
          IconButton(
            icon: Icon(
              CupertinoIcons.doc,
              size: 28,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: UserProfil(
                Imageurl: currentUser.imageURL,
                size: 34,
              ),
            ),
          ),
        ],
      ),
      body:Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
              color: Colors.white
        ),
        child:CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${room.club}"),
                      Icon(CupertinoIcons.ellipsis),
                    ],
                  ),
                    Text(room.name),],
                ),
              ),
            ),
                SliverGrid.count(crossAxisCount: 3,
                  children: room.speakers.map((e) => RoomUserProfil(imageUrl: e.imageURL, name: e.firstName
                  , isnew: Random().nextBool(),
                  ismut: Random().nextBool(),)).toList(),
                ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("🍕Number of Speker"),
                      Icon(CupertinoIcons.ellipsis),
                    ],
                  ),
                    Text("🥗Room of Speker"),],
                ),
              ),
            ),
            SliverGrid.count(crossAxisCount: 4,
              children: room.followedBySpeakers.map((e) => RoomUserProfil(imageUrl: e.imageURL, name: e.firstName,
              size: 40,
              isnew: Random().nextBool(),
                ismut: Random().nextBool(),)).toList(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("😍Number of Other"),
                      Icon(CupertinoIcons.ellipsis),
                    ],
                  ),
                    Text("🤐Room of Other"),],
                ),
              ),
            ),
            SliverGrid.count(crossAxisCount: 4,
              children: room.others.map((e) => RoomUserProfil(imageUrl: e.imageURL, name: e.firstName,
              size: 40,isnew: Random().nextBool(),
              ismut:Random().nextBool() ,)).toList(),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25),
                ),
                child: TextButton(onPressed: (){}, child: Text(" new room",
                style: TextStyle(

                ),),
                ),
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.mic),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[300],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(CupertinoIcons.hand_raised),
                    ),
                  ),
                ],
              ),
            ],
       ),
      ),
    );
  }
}
