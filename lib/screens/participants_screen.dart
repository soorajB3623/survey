import 'package:flutter/material.dart';

import '../models/participant.dart';

class ParticipantsScreen extends StatelessWidget {
  final List<Participant> _people;
  const ParticipantsScreen(this._people);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Colors.white70,
        title: Text(
          "Participants",
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: ListView.builder(
        itemCount: _people.length,
        itemBuilder: (context, index) {
          return Card(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.19),
                    spreadRadius: 1,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  )
                ],
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(05),
                    topLeft: Radius.circular(05)),
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(_people[index].imageUrl),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                  Text(
                    _people[index].name,
                    style: Theme.of(context).textTheme.caption,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
