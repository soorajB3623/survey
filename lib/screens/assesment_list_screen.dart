import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../widgets/circle_people.dart';
import './participants_screen.dart';
import './accessors_screen.dart';
import 'assesment_centre_activity_screen.dart';
import '../controllers/assesment_mainController.dart';

class AssesmentListSCreen extends StatefulWidget {
  const AssesmentListSCreen({Key? key}) : super(key: key);

  @override
  _AssesmentListSCreenState createState() => _AssesmentListSCreenState();
}

class _AssesmentListSCreenState extends State<AssesmentListSCreen> {
  final _controller = Get.put(AssesmentMainController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Assessment Centre List",
            style: Theme.of(context).textTheme.title,
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) => Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        _controller.items[index].name,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.note_alt_outlined),
                        onPressed: () =>
                            Get.to(() => AssessmentCentreActivity()),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${DateFormat.yMMM().format(_controller.items[index].from)} to ${DateFormat.yMMM().format(_controller.items[index].to)}",
                    style: Theme.of(context).textTheme.caption,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Get.to(() => ParticipantsScreen(
                            _controller.items[index].participant)),
                        child: Container(
                          width: 95,
                          child: CirclePeople(
                              _controller.items[index].participant[0].imageUrl,
                              _controller.items[index].participant[1].imageUrl,
                              _controller.items[index].participant[2].imageUrl),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "+" +
                            (_controller.items[index].participant.length - 3)
                                .toString(),
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () => Get.to(() =>
                            AccessorsScreen(_controller.items[index].accesor)),
                        child: Container(
                          width: 95,
                          child: CirclePeople(
                              _controller.items[index].participant[0].imageUrl,
                              _controller.items[index].participant[1].imageUrl,
                              _controller.items[index].participant[2].imageUrl),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "+" +
                            (_controller.items[index].accesor.length - 3)
                                .toString(),
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text("Participants",
                          style: Theme.of(context).textTheme.display1),
                      Spacer(),
                      Text(
                        "Accessors",
                        style: Theme.of(context).textTheme.display1,
                      ),
                      SizedBox(
                        width: 48,
                      )
                    ],
                  )
                ],
              ),
            ),
            height: 180,
            width: double.infinity,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color.fromRGBO(209, 163, 164, 0.15),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black)),
          ),
          itemCount: _controller.items.length,
        )
        /*,*/
        );
  }
}
