import 'package:flutter/material.dart';

class AssessmentNameScreen extends StatelessWidget {
  static const routeName = "/assesment-name";
  const AssessmentNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        backgroundColor: Colors.white70,
        title: Text(
          "Assesment name",
          style: Theme.of(context).textTheme.caption,
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "Time left: 3hrs",
              style: Theme.of(context).textTheme.button,
            ),
            decoration: BoxDecoration(color: Colors.orange),
            height: 22,
            width: double.infinity,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Case Study | Duration 3hrs",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "How leaders emerge during\n challenging times?",
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "We live in uncertain times. The world as we know it has changed dramatically because of the rapid spread of the Covid-19 virus. The pandemic, racial tensions, geopolitical issues, financial meltdown, and high unemployment are some of the challenges turning our lives upside down. It feels like we are being hit with a hundred-year flood, and sadly, there are no signs indicating that the waters will recede anytime soon. How can individuals, leaders, and corporations react to such dreadful events? Strong and decisive leadership can make a big difference in how quickly we emerge from this difficult situation.Recently, I was asked to present my perspective on leadership during challenging times to a panel of business leaders. My experiences and observations have led me to a few fundamental leadership tenets to consider right now. Purpose-driven organizations are resilient, and with the right leadership, they can thrive on chaos and gain an edge over their competition. When purpose-driven leaders motivate their teams to deliver value without compromising on their vision and values, they create reasons for their employees to wake up in the morning and come to work with passion and energy. I see three broad areas of leadership that can have a significant impact on organizations and communities:",
              style: TextStyle(color: Colors.black, fontSize: 15, height: 1.5),
              textAlign: TextAlign.start,
              textScaleFactor: 1,
            ),
          )
        ],
      ),
    );
  }
}
