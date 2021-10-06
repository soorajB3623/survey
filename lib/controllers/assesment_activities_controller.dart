import 'package:get/get.dart';
import '../models/assementActivities.dart';
import '../data/accessor.dart';
import '../data/participants.dart';

class AssessmentActivitiesController extends GetxController {
  List<AssesmentActivity> _items = [
    AssesmentActivity(
        "fgyth",
        "Case Study Amazon\n Hyperlocal",
        participants,
        accessor,
        DateTime.now(),
        DateTime(DateTime.now().year, DateTime.now().month + 1,
            DateTime.now().day + 5)),
    AssesmentActivity(
        "fpyoh",
        "Case Study Flipcart\n Hyperlocal",
        participants,
        accessor,
        DateTime(DateTime.now().year, DateTime.now().month - 2,
            DateTime.now().day + 4),
        DateTime(DateTime.now().year, DateTime.now().month + 7,
            DateTime.now().day + 5)),
    AssesmentActivity(
        "fgyah",
        "Case Study Myntra\n Hyperlocal",
        participants,
        accessor,
        DateTime(DateTime.now().year, DateTime.now().month - 1,
            DateTime.now().day + 8),
        DateTime(DateTime.now().year, DateTime.now().month + 3,
            DateTime.now().day + 5)),
    AssesmentActivity(
        "fgrah",
        "Case Study Snapdeal\n Hyperlocal",
        participants,
        accessor,
        DateTime(DateTime.now().year, DateTime.now().month - 1,
            DateTime.now().day + 5),
        DateTime(DateTime.now().year, DateTime.now().month + 3,
            DateTime.now().day + 1)),
    AssesmentActivity(
        "fgyah",
        "Case Study Cred\n Hyperlocal",
        participants,
        accessor,
        DateTime(DateTime.now().year, DateTime.now().month - 1,
            DateTime.now().day + 8),
        DateTime(DateTime.now().year, DateTime.now().month + 3,
            DateTime.now().day + 5)),
  ];
  // var check = false;
  List<AssesmentActivity> get items {
    return [..._items];
  }

  void changeView(String id) {
    AssesmentActivity _finnd = items.firstWhere((element) => element.id == id);
    _finnd.expand = !_finnd.expand;
    update();
  }
}
