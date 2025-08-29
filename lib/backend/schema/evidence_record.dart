import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EvidenceRecord extends FirestoreRecord {
  EvidenceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "aiSummary" field.
  String? _aiSummary;
  String get aiSummary => _aiSummary ?? '';
  bool hasAiSummary() => _aiSummary != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  bool hasCreatedAt() => _createdAt != null;

  // "evidenceId" field.
  String? _evidenceId;
  String get evidenceId => _evidenceId ?? '';
  bool hasEvidenceId() => _evidenceId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _aiSummary = snapshotData['aiSummary'] as String?;
    _content = snapshotData['content'] as String?;
    _createdAt = snapshotData['createdAt'] as String?;
    _evidenceId = snapshotData['evidenceId'] as String?;
    _type = snapshotData['type'] as String?;
    _userId = snapshotData['userId'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Evidence');

  static Stream<EvidenceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EvidenceRecord.fromSnapshot(s));

  static Future<EvidenceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EvidenceRecord.fromSnapshot(s));

  static EvidenceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EvidenceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EvidenceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EvidenceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EvidenceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EvidenceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEvidenceRecordData({
  String? aiSummary,
  String? content,
  String? createdAt,
  String? evidenceId,
  String? type,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'aiSummary': aiSummary,
      'content': content,
      'createdAt': createdAt,
      'evidenceId': evidenceId,
      'type': type,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class EvidenceRecordDocumentEquality implements Equality<EvidenceRecord> {
  const EvidenceRecordDocumentEquality();

  @override
  bool equals(EvidenceRecord? e1, EvidenceRecord? e2) {
    return e1?.aiSummary == e2?.aiSummary &&
        e1?.content == e2?.content &&
        e1?.createdAt == e2?.createdAt &&
        e1?.evidenceId == e2?.evidenceId &&
        e1?.type == e2?.type &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(EvidenceRecord? e) => const ListEquality().hash([
        e?.aiSummary,
        e?.content,
        e?.createdAt,
        e?.evidenceId,
        e?.type,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is EvidenceRecord;
}
