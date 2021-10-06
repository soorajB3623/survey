import 'participant.dart';

class AssesmentMain {
  final int id;
  final String name;
  final List<Participant> participant;
  final List<Participant> accesor;
  final DateTime from;
  final DateTime to;
  final List<String>? itemList;
  AssesmentMain(
      {required this.id,
      required this.name,
      required this.participant,
      required this.accesor,
      required this.from,
      required this.to,
      this.itemList});
}
