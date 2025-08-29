import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BadgeRecord extends FirestoreRecord {
  BadgeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "badgeId" field.
  String? _badgeId;
  String get badgeId => _badgeId ?? '';
  bool hasBadgeId() => _badgeId != null;

  // "criteria" field.
  String? _criteria;
  String get criteria => _criteria ?? '';
  bool hasCriteria() => _criteria != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "iconUrl" field.
  String? _iconUrl;
  String get iconUrl => _iconUrl ?? '';
  bool hasIconUrl() => _iconUrl != null;

  void _initializeFields() {
    _badgeId = snapshotData['badgeId'] as String?;
    _criteria = snapshotData['criteria'] as String?;
    _description = snapshotData['description'] as String?;
    _iconUrl = snapshotData['iconUrl'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Badge');

  static Stream<BadgeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BadgeRecord.fromSnapshot(s));

  static Future<BadgeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BadgeRecord.fromSnapshot(s));

  static BadgeRecord fromSnapshot(DocumentSnapshot snapshot) => BadgeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BadgeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BadgeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BadgeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BadgeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBadgeRecordData({
  String? badgeId,
  String? criteria,
  String? description,
  String? iconUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'badgeId': badgeId,
      'criteria': criteria,
      'description': description,
      'iconUrl': iconUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class BadgeRecordDocumentEquality implements Equality<BadgeRecord> {
  const BadgeRecordDocumentEquality();

  @override
  bool equals(BadgeRecord? e1, BadgeRecord? e2) {
    return e1?.badgeId == e2?.badgeId &&
        e1?.criteria == e2?.criteria &&
        e1?.description == e2?.description &&
        e1?.iconUrl == e2?.iconUrl;
  }

  @override
  int hash(BadgeRecord? e) => const ListEquality()
      .hash([e?.badgeId, e?.criteria, e?.description, e?.iconUrl]);

  @override
  bool isValidKey(Object? o) => o is BadgeRecord;
}
