import 'package:flutter/material.dart';
import '../widgets/assesmentCard.dart';

class AssessmentCentreActivity extends StatelessWidget {
  const AssessmentCentreActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "CEO Assesment centre\nActivities ",
          style: Theme.of(context).textTheme.caption,
        ),
      ),
      body: Assesmentcard(),
    );
  }
}
