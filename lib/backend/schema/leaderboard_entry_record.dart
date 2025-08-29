import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaderboardEntryRecord extends FirestoreRecord {
  LeaderboardEntryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Leaderboardid" field.
  String? _leaderboardid;
  String get leaderboardid => _leaderboardid ?? '';
  bool hasLeaderboardid() => _leaderboardid != null;

  void _initializeFields() {
    _leaderboardid = snapshotData['Leaderboardid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('LeaderboardEntry');

  static Stream<LeaderboardEntryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LeaderboardEntryRecord.fromSnapshot(s));

  static Future<LeaderboardEntryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => LeaderboardEntryRecord.fromSnapshot(s));

  static LeaderboardEntryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LeaderboardEntryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LeaderboardEntryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LeaderboardEntryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LeaderboardEntryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LeaderboardEntryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLeaderboardEntryRecordData({
  String? leaderboardid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Leaderboardid': leaderboardid,
    }.withoutNulls,
  );

  return firestoreData;
}

class LeaderboardEntryRecordDocumentEquality
    implements Equality<LeaderboardEntryRecord> {
  const LeaderboardEntryRecordDocumentEquality();

  @override
  bool equals(LeaderboardEntryRecord? e1, LeaderboardEntryRecord? e2) {
    return e1?.leaderboardid == e2?.leaderboardid;
  }

  @override
  int hash(LeaderboardEntryRecord? e) =>
      const ListEquality().hash([e?.leaderboardid]);

  @override
  bool isValidKey(Object? o) => o is LeaderboardEntryRecord;
}
