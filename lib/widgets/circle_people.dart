import 'package:flutter/material.dart';

class CirclePeople extends StatelessWidget {
  final String img1;
  final String img2;
  final String img3;
  CirclePeople(this.img1, this.img2, this.img3);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(img1),
            ),
            SizedBox(
              width: 15,
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(img2),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 27.5,
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(img3),
            ),
            SizedBox(
              width: 27.5,
            ),
          ],
        )
      ],
    );
  }
}
