import 'package:clu/Screen/room_screen.dart';
import 'package:clu/models/room.dart';
import 'package:clu/widget/userprofil.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class RoomCard extends StatelessWidget {
  @override
  final Room room;
  const RoomCard({Key key, this.room}) : super(key: key);
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RoomScreen(room: room,),),);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${room.club } '.toUpperCase(),
                        style: Theme.of(context).textTheme.overline.copyWith(
                          fontSize: 11,
                          fontWeight: FontWeight.w200,
                          letterSpacing: 1.0
                        ),
                      ),
                    ),
                    Icon(Icons.home),
                  ],
                ),
                Text('${room.name } ',
                  style: Theme.of(context).textTheme.overline.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                       child: Stack(
                         alignment: Alignment.bottomRight,
                         children: [
                           Positioned(
                             left:24,
                              top: 24,
                             child:UserProfil(Imageurl:room.speakers[0].imageURL ,size: 55,),),
                           UserProfil(Imageurl:room.speakers[1].imageURL ,size: 55,),
                         ],
                       ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                                child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                  ...room.speakers.map((e) =>
                                    Text('${e.firstName} ' '${e.lastName}✔'),),
                                   Text.rich(
                                       TextSpan(
                                         children:[TextSpan(
                                             text: '${room.speakers.length+room.followedBySpeakers.length+room.others.length }'
                                         ),
                                         WidgetSpan(child: Icon(
                                           CupertinoIcons.person_fill
                                         ),),
                                         TextSpan(
                                       text: '${room.speakers.length }',
                                       ),

                                     WidgetSpan(child: Icon(
                                      CupertinoIcons.chat_bubble_fill
                                      ),),
                                         ],
                                       ),
                                   ),
                            ],),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
