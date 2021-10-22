import 'package:flutter/material.dart';
class UserProfil extends StatelessWidget {
  @override
  final String Imageurl;
  final double size;

  const UserProfil({Key key, this.Imageurl, this.size}) : super(key: key);
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(size/2-size/10),
      child: Image.asset(Imageurl,
        fit: BoxFit.cover,
        width: size,
        height: size,
      ),
    );
  }
}
