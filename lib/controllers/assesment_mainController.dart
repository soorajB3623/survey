import 'package:get/get.dart';
import '../models/assesmentMain.dart';
import '../data/participants.dart';
import '../data/accessor.dart';

class AssesmentMainController extends GetxController {
  List<AssesmentMain> _items = [
    AssesmentMain(
        id: 1,
        name: "CEO Assesment",
        participant: participants,
        accesor: accessor,
        from: DateTime(DateTime.now().year, DateTime.now().month - 3,
            DateTime.now().day + 3),
        to: DateTime.now()),
    AssesmentMain(
        id: 2,
        name: "CMO Assesment",
        participant: participants,
        accesor: accessor,
        from: DateTime(DateTime.now().year, DateTime.now().month - 3,
            DateTime.now().day + 3),
        to: DateTime.now()),
    AssesmentMain(
        id: 3,
        name: "CTO Assesment",
        participant: participants,
        accesor: accessor,
        from: DateTime(DateTime.now().year, DateTime.now().month - 3,
            DateTime.now().day + 3),
        to: DateTime.now()),
    AssesmentMain(
        id: 4,
        name: "CFO Assesment",
        participant: participants,
        accesor: accessor,
        from: DateTime(DateTime.now().year, DateTime.now().month - 3,
            DateTime.now().day + 3),
        to: DateTime.now())
  ];

  List<AssesmentMain> get items {
    return [..._items];
  }
}
