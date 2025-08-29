import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MilestoneRecord extends FirestoreRecord {
  MilestoneRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "StartDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "EndDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "dependencies" field.
  List<String>? _dependencies;
  List<String> get dependencies => _dependencies ?? const [];
  bool hasDependencies() => _dependencies != null;

  // "effortEstimate" field.
  String? _effortEstimate;
  String get effortEstimate => _effortEstimate ?? '';
  bool hasEffortEstimate() => _effortEstimate != null;

  // "milestoneId" field.
  String? _milestoneId;
  String get milestoneId => _milestoneId ?? '';
  bool hasMilestoneId() => _milestoneId != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "evidenceIds" field.
  List<String>? _evidenceIds;
  List<String> get evidenceIds => _evidenceIds ?? const [];
  bool hasEvidenceIds() => _evidenceIds != null;

  // "goalId" field.
  String? _goalId;
  String get goalId => _goalId ?? '';
  bool hasGoalId() => _goalId != null;

  // "managerAck" field.
  bool? _managerAck;
  bool get managerAck => _managerAck ?? false;
  bool hasManagerAck() => _managerAck != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _startDate = snapshotData['StartDate'] as DateTime?;
    _endDate = snapshotData['EndDate'] as DateTime?;
    _dependencies = getDataList(snapshotData['dependencies']);
    _effortEstimate = snapshotData['effortEstimate'] as String?;
    _milestoneId = snapshotData['milestoneId'] as String?;
    _description = snapshotData['description'] as String?;
    _evidenceIds = getDataList(snapshotData['evidenceIds']);
    _goalId = snapshotData['goalId'] as String?;
    _managerAck = snapshotData['managerAck'] as bool?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Milestone');

  static Stream<MilestoneRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MilestoneRecord.fromSnapshot(s));

  static Future<MilestoneRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MilestoneRecord.fromSnapshot(s));

  static MilestoneRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MilestoneRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MilestoneRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MilestoneRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MilestoneRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MilestoneRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMilestoneRecordData({
  DateTime? startDate,
  DateTime? endDate,
  String? effortEstimate,
  String? milestoneId,
  String? description,
  String? goalId,
  bool? managerAck,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'StartDate': startDate,
      'EndDate': endDate,
      'effortEstimate': effortEstimate,
      'milestoneId': milestoneId,
      'description': description,
      'goalId': goalId,
      'managerAck': managerAck,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class MilestoneRecordDocumentEquality implements Equality<MilestoneRecord> {
  const MilestoneRecordDocumentEquality();

  @override
  bool equals(MilestoneRecord? e1, MilestoneRecord? e2) {
    const listEquality = ListEquality();
    return e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        listEquality.equals(e1?.dependencies, e2?.dependencies) &&
        e1?.effortEstimate == e2?.effortEstimate &&
        e1?.milestoneId == e2?.milestoneId &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.evidenceIds, e2?.evidenceIds) &&
        e1?.goalId == e2?.goalId &&
        e1?.managerAck == e2?.managerAck &&
        e1?.title == e2?.title;
  }

  @override
  int hash(MilestoneRecord? e) => const ListEquality().hash([
        e?.startDate,
        e?.endDate,
        e?.dependencies,
        e?.effortEstimate,
        e?.milestoneId,
        e?.description,
        e?.evidenceIds,
        e?.goalId,
        e?.managerAck,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is MilestoneRecord;
}
