import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeamRecord extends FirestoreRecord {
  TeamRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "TeamB" field.
  String? _teamB;
  String get teamB => _teamB ?? '';
  bool hasTeamB() => _teamB != null;

  // "memberIds" field.
  List<String>? _memberIds;
  List<String> get memberIds => _memberIds ?? const [];
  bool hasMemberIds() => _memberIds != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _teamB = snapshotData['TeamB'] as String?;
    _memberIds = getDataList(snapshotData['memberIds']);
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Team');

  static Stream<TeamRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeamRecord.fromSnapshot(s));

  static Future<TeamRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeamRecord.fromSnapshot(s));

  static TeamRecord fromSnapshot(DocumentSnapshot snapshot) => TeamRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeamRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeamRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeamRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeamRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeamRecordData({
  String? teamB,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TeamB': teamB,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeamRecordDocumentEquality implements Equality<TeamRecord> {
  const TeamRecordDocumentEquality();

  @override
  bool equals(TeamRecord? e1, TeamRecord? e2) {
    const listEquality = ListEquality();
    return e1?.teamB == e2?.teamB &&
        listEquality.equals(e1?.memberIds, e2?.memberIds) &&
        e1?.name == e2?.name;
  }

  @override
  int hash(TeamRecord? e) =>
      const ListEquality().hash([e?.teamB, e?.memberIds, e?.name]);

  @override
  bool isValidKey(Object? o) => o is TeamRecord;
}
