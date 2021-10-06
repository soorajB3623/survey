import 'participant.dart';

class AssesmentActivity {
  final String id;
  final String name;
  final List<Participant> participant;
  final List<Participant> accesor;
  final DateTime from;
  final DateTime to;
  bool expand = false;
  AssesmentActivity(
    this.id,
    this.name,
    this.participant,
    this.accesor,
    this.from,
    this.to,
  );
}
