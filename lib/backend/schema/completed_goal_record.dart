import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompletedGoalRecord extends FirestoreRecord {
  CompletedGoalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "goalId" field.
  String? _goalId;
  String get goalId => _goalId ?? '';
  bool hasGoalId() => _goalId != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "completionDate" field.
  DateTime? _completionDate;
  DateTime? get completionDate => _completionDate;
  bool hasCompletionDate() => _completionDate != null;

  // "evidence" field.
  String? _evidence;
  String get evidence => _evidence ?? '';
  bool hasEvidence() => _evidence != null;

  // "managerAcknowledgement" field.
  bool? _managerAcknowledgement;
  bool get managerAcknowledgement => _managerAcknowledgement ?? false;
  bool hasManagerAcknowledgement() => _managerAcknowledgement != null;

  void _initializeFields() {
    _goalId = snapshotData['goalId'] as String?;
    _userId = snapshotData['userId'] as String?;
    _title = snapshotData['title'] as String?;
    _completionDate = snapshotData['completionDate'] as DateTime?;
    _evidence = snapshotData['evidence'] as String?;
    _managerAcknowledgement = snapshotData['managerAcknowledgement'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CompletedGoal');

  static Stream<CompletedGoalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompletedGoalRecord.fromSnapshot(s));

  static Future<CompletedGoalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompletedGoalRecord.fromSnapshot(s));

  static CompletedGoalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompletedGoalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompletedGoalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompletedGoalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompletedGoalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompletedGoalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompletedGoalRecordData({
  String? goalId,
  String? userId,
  String? title,
  DateTime? completionDate,
  String? evidence,
  bool? managerAcknowledgement,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'goalId': goalId,
      'userId': userId,
      'title': title,
      'completionDate': completionDate,
      'evidence': evidence,
      'managerAcknowledgement': managerAcknowledgement,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompletedGoalRecordDocumentEquality
    implements Equality<CompletedGoalRecord> {
  const CompletedGoalRecordDocumentEquality();

  @override
  bool equals(CompletedGoalRecord? e1, CompletedGoalRecord? e2) {
    return e1?.goalId == e2?.goalId &&
        e1?.userId == e2?.userId &&
        e1?.title == e2?.title &&
        e1?.completionDate == e2?.completionDate &&
        e1?.evidence == e2?.evidence &&
        e1?.managerAcknowledgement == e2?.managerAcknowledgement;
  }

  @override
  int hash(CompletedGoalRecord? e) => const ListEquality().hash([
        e?.goalId,
        e?.userId,
        e?.title,
        e?.completionDate,
        e?.evidence,
        e?.managerAcknowledgement
      ]);

  @override
  bool isValidKey(Object? o) => o is CompletedGoalRecord;
}
