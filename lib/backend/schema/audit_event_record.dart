import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuditEventRecord extends FirestoreRecord {
  AuditEventRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "eventId" field.
  String? _eventId;
  String get eventId => _eventId ?? '';
  bool hasEventId() => _eventId != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "action" field.
  String? _action;
  String get action => _action ?? '';
  bool hasAction() => _action != null;

  // "entityType" field.
  List<String>? _entityType;
  List<String> get entityType => _entityType ?? const [];
  bool hasEntityType() => _entityType != null;

  // "entityId" field.
  String? _entityId;
  String get entityId => _entityId ?? '';
  bool hasEntityId() => _entityId != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  void _initializeFields() {
    _eventId = snapshotData['eventId'] as String?;
    _userId = snapshotData['userId'] as String?;
    _action = snapshotData['action'] as String?;
    _entityType = getDataList(snapshotData['entityType']);
    _entityId = snapshotData['entityId'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AuditEvent');

  static Stream<AuditEventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AuditEventRecord.fromSnapshot(s));

  static Future<AuditEventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AuditEventRecord.fromSnapshot(s));

  static AuditEventRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AuditEventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AuditEventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AuditEventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AuditEventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AuditEventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAuditEventRecordData({
  String? eventId,
  String? userId,
  String? action,
  String? entityId,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'eventId': eventId,
      'userId': userId,
      'action': action,
      'entityId': entityId,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class AuditEventRecordDocumentEquality implements Equality<AuditEventRecord> {
  const AuditEventRecordDocumentEquality();

  @override
  bool equals(AuditEventRecord? e1, AuditEventRecord? e2) {
    const listEquality = ListEquality();
    return e1?.eventId == e2?.eventId &&
        e1?.userId == e2?.userId &&
        e1?.action == e2?.action &&
        listEquality.equals(e1?.entityType, e2?.entityType) &&
        e1?.entityId == e2?.entityId &&
        e1?.timestamp == e2?.timestamp;
  }

  @override
  int hash(AuditEventRecord? e) => const ListEquality().hash([
        e?.eventId,
        e?.userId,
        e?.action,
        e?.entityType,
        e?.entityId,
        e?.timestamp
      ]);

  @override
  bool isValidKey(Object? o) => o is AuditEventRecord;
}
