import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TseingRecord extends FirestoreRecord {
  TseingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "surname" field.
  String? _surname;
  String get surname => _surname ?? '';
  bool hasSurname() => _surname != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _surname = snapshotData['surname'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tseing');

  static Stream<TseingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TseingRecord.fromSnapshot(s));

  static Future<TseingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TseingRecord.fromSnapshot(s));

  static TseingRecord fromSnapshot(DocumentSnapshot snapshot) => TseingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TseingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TseingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TseingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TseingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTseingRecordData({
  String? name,
  String? surname,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'surname': surname,
    }.withoutNulls,
  );

  return firestoreData;
}

class TseingRecordDocumentEquality implements Equality<TseingRecord> {
  const TseingRecordDocumentEquality();

  @override
  bool equals(TseingRecord? e1, TseingRecord? e2) {
    return e1?.name == e2?.name && e1?.surname == e2?.surname;
  }

  @override
  int hash(TseingRecord? e) => const ListEquality().hash([e?.name, e?.surname]);

  @override
  bool isValidKey(Object? o) => o is TseingRecord;
}
