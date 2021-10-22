import 'package:clu/widget/userprofil.dart';
import 'package:flutter/material.dart';
import '../data.dart';

class RoomUserProfil extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int size;
  final bool isnew;
  final bool ismut;

  const RoomUserProfil({Key key, @required this.imageUrl,
    @required this.name,
    this.size=40,
    this.isnew=false,
    this.ismut=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: UserProfil(
                Imageurl: imageUrl,
                size: 70,
              ),
            ),
            if(ismut)
            Positioned(
               right: 0.0,
              bottom: 0.0,

              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,5),
                        color: Colors.black26
                    ),
                  ],
                    shape: BoxShape.circle,
                  color: Colors.white
                ),

                 child:Icon(Icons.mic_off) ,
              ),
            ),
            if(isnew)
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,5),
                      color: Colors.black26
                    ),
                  ],
                    color:Theme.of(context).scaffoldBackgroundColor
                ),
                child: Icon(Icons.new_releases_outlined) ,
              ),
            ),
          ],
        ),
        Text(name,
        overflow: TextOverflow.ellipsis,)
      ],
    );
  }
}
