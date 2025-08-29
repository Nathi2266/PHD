import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlertRecord extends FirestoreRecord {
  AlertRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "alertId" field.
  String? _alertId;
  String get alertId => _alertId ?? '';
  bool hasAlertId() => _alertId != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  bool hasCreatedAt() => _createdAt != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "relatedGoalId" field.
  String? _relatedGoalId;
  String get relatedGoalId => _relatedGoalId ?? '';
  bool hasRelatedGoalId() => _relatedGoalId != null;

  // "relatedMilestoneId" field.
  String? _relatedMilestoneId;
  String get relatedMilestoneId => _relatedMilestoneId ?? '';
  bool hasRelatedMilestoneId() => _relatedMilestoneId != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _alertId = snapshotData['alertId'] as String?;
    _createdAt = snapshotData['createdAt'] as String?;
    _message = snapshotData['message'] as String?;
    _relatedGoalId = snapshotData['relatedGoalId'] as String?;
    _relatedMilestoneId = snapshotData['relatedMilestoneId'] as String?;
    _status = snapshotData['status'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Alert');

  static Stream<AlertRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlertRecord.fromSnapshot(s));

  static Future<AlertRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlertRecord.fromSnapshot(s));

  static AlertRecord fromSnapshot(DocumentSnapshot snapshot) => AlertRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlertRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlertRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlertRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlertRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlertRecordData({
  String? alertId,
  String? createdAt,
  String? message,
  String? relatedGoalId,
  String? relatedMilestoneId,
  String? status,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'alertId': alertId,
      'createdAt': createdAt,
      'message': message,
      'relatedGoalId': relatedGoalId,
      'relatedMilestoneId': relatedMilestoneId,
      'status': status,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlertRecordDocumentEquality implements Equality<AlertRecord> {
  const AlertRecordDocumentEquality();

  @override
  bool equals(AlertRecord? e1, AlertRecord? e2) {
    return e1?.alertId == e2?.alertId &&
        e1?.createdAt == e2?.createdAt &&
        e1?.message == e2?.message &&
        e1?.relatedGoalId == e2?.relatedGoalId &&
        e1?.relatedMilestoneId == e2?.relatedMilestoneId &&
        e1?.status == e2?.status &&
        e1?.type == e2?.type;
  }

  @override
  int hash(AlertRecord? e) => const ListEquality().hash([
        e?.alertId,
        e?.createdAt,
        e?.message,
        e?.relatedGoalId,
        e?.relatedMilestoneId,
        e?.status,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is AlertRecord;
}
