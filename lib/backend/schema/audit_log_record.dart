import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AuditLogRecord extends FirestoreRecord {
  AuditLogRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "AuditId" field.
  String? _auditId;
  String get auditId => _auditId ?? '';
  bool hasAuditId() => _auditId != null;

  void _initializeFields() {
    _auditId = snapshotData['AuditId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('AuditLog');

  static Stream<AuditLogRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AuditLogRecord.fromSnapshot(s));

  static Future<AuditLogRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AuditLogRecord.fromSnapshot(s));

  static AuditLogRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AuditLogRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AuditLogRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AuditLogRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AuditLogRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AuditLogRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAuditLogRecordData({
  String? auditId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'AuditId': auditId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AuditLogRecordDocumentEquality implements Equality<AuditLogRecord> {
  const AuditLogRecordDocumentEquality();

  @override
  bool equals(AuditLogRecord? e1, AuditLogRecord? e2) {
    return e1?.auditId == e2?.auditId;
  }

  @override
  int hash(AuditLogRecord? e) => const ListEquality().hash([e?.auditId]);

  @override
  bool isValidKey(Object? o) => o is AuditLogRecord;
}
