import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'circle_people.dart';
import '../screens/assesment_name_screen.dart';
import '../controllers/assesment_activities_controller.dart';

var _color = [Colors.green, Colors.brown, Colors.red, Colors.orange];

class Assesmentcard extends StatelessWidget {
  final _controller = Get.put(AssessmentActivitiesController());
  final _random = new Random();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: _controller,
        builder: (_) {
          return ListView.builder(
              itemCount: _controller.items.length,
              itemBuilder: (ctx, index) {
                var element = _color[_random.nextInt(_color.length)];
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: element,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8))),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  _controller.items[index].name,
                                  style: Theme.of(context).textTheme.subhead,
                                ),
                                Spacer(),
                                IconButton(
                                    onPressed: () => _controller.changeView(
                                        _controller.items[index].id),
                                    icon: _controller.items[index].expand
                                        ? Icon(
                                            Icons.arrow_drop_up_outlined,
                                            size: 38,
                                            color: Colors.black,
                                          )
                                        : Icon(
                                            Icons.arrow_drop_down_outlined,
                                            size: 38,
                                            color: Colors.black,
                                          ))
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "${DateFormat.yMMM().format(_controller.items[index].from)} to ${DateFormat.yMMM().format(_controller.items[index].to)}",
                              style: Theme.of(context).textTheme.caption,
                            ),
                            SizedBox(
                              height: 11,
                            ),
                            Row(
                              children: [
                                CirclePeople(
                                    _controller
                                        .items[index].participant[0].imageUrl,
                                    _controller
                                        .items[index].participant[1].imageUrl,
                                    _controller
                                        .items[index].participant[2].imageUrl),
                                Spacer(),
                                CirclePeople(
                                    _controller
                                        .items[index].participant[0].imageUrl,
                                    _controller
                                        .items[index].participant[1].imageUrl,
                                    _controller
                                        .items[index].participant[2].imageUrl)
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Participants",
                                  style: Theme.of(context).textTheme.display1,
                                ),
                                Spacer(),
                                Text(
                                  "Accessors",
                                  style: Theme.of(context).textTheme.display1,
                                ),
                                SizedBox(
                                  width: 26,
                                )
                              ],
                            ),
                            _controller.items[index].expand
                                ? Column(
                                    children: [
                                      ListTile(
                                        subtitle: Text("(2hrs:20min:30s left)"),
                                        title: Text(
                                          "Case Study Assesment",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                        trailing: InkWell(
                                          onTap: () => Navigator.of(context)
                                              .pushNamed(AssessmentNameScreen
                                                  .routeName),
                                          child: CircleAvatar(
                                            radius: 16,
                                            child: Icon(
                                              Icons.arrow_forward,
                                              color: Colors.white,
                                              size: 24,
                                            ),
                                            backgroundColor: Colors.orange,
                                          ),
                                        ),
                                      ),
                                      Divider(
                                        height: 0,
                                        color: Colors.black,
                                      ),
                                      ListTile(
                                        subtitle: Text("(2hrs:20min:30s left)"),
                                        title: Text(
                                          "Group Discussion",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                        trailing: CircleAvatar(
                                          radius: 16,
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                          backgroundColor: Colors.orange,
                                        ),
                                      ),
                                      Divider(
                                        height: 0,
                                        color: Colors.black,
                                      ),
                                      ListTile(
                                        subtitle: Text("(2hrs:20min:30s left)"),
                                        title: Text(
                                          "Co Participant Feedback",
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption,
                                        ),
                                        trailing: CircleAvatar(
                                          radius: 16,
                                          child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                          backgroundColor: Colors.orange,
                                        ),
                                      )
                                    ],
                                  )
                                : Align(
                                    alignment: Alignment.center,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        elevation: MaterialStateProperty.all(2),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.orange),
                                      ),
                                      onPressed: () => _controller.changeView(
                                          _controller.items[index].id),
                                      child: Text(
                                        "View Details",
                                        textAlign: TextAlign.center,
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.all(15),
                  height: _controller.items[index].expand ? 382 : 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(color: element),
                      borderRadius: BorderRadius.circular(8)),
                );
              });
        });
  }
}
