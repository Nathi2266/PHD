import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SettingsRecord extends FirestoreRecord {
  SettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "goalVisibility" field.
  String? _goalVisibility;
  String get goalVisibility => _goalVisibility ?? '';
  bool hasGoalVisibility() => _goalVisibility != null;

  // "notificationsEnabled" field.
  bool? _notificationsEnabled;
  bool get notificationsEnabled => _notificationsEnabled ?? false;
  bool hasNotificationsEnabled() => _notificationsEnabled != null;

  // "consentLeaderboard" field.
  bool? _consentLeaderboard;
  bool get consentLeaderboard => _consentLeaderboard ?? false;
  bool hasConsentLeaderboard() => _consentLeaderboard != null;

  // "consentCelebrations" field.
  bool? _consentCelebrations;
  bool get consentCelebrations => _consentCelebrations ?? false;
  bool hasConsentCelebrations() => _consentCelebrations != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "avatarUrl" field.
  String? _avatarUrl;
  String get avatarUrl => _avatarUrl ?? '';
  bool hasAvatarUrl() => _avatarUrl != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _goalVisibility = snapshotData['goalVisibility'] as String?;
    _notificationsEnabled = snapshotData['notificationsEnabled'] as bool?;
    _consentLeaderboard = snapshotData['consentLeaderboard'] as bool?;
    _consentCelebrations = snapshotData['consentCelebrations'] as bool?;
    _name = snapshotData['name'] as String?;
    _department = snapshotData['department'] as String?;
    _avatarUrl = snapshotData['avatarUrl'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('settings')
          : FirebaseFirestore.instance.collectionGroup('settings');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('settings').doc(id);

  static Stream<SettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SettingsRecord.fromSnapshot(s));

  static Future<SettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SettingsRecord.fromSnapshot(s));

  static SettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSettingsRecordData({
  String? goalVisibility,
  bool? notificationsEnabled,
  bool? consentLeaderboard,
  bool? consentCelebrations,
  String? name,
  String? department,
  String? avatarUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'goalVisibility': goalVisibility,
      'notificationsEnabled': notificationsEnabled,
      'consentLeaderboard': consentLeaderboard,
      'consentCelebrations': consentCelebrations,
      'name': name,
      'department': department,
      'avatarUrl': avatarUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class SettingsRecordDocumentEquality implements Equality<SettingsRecord> {
  const SettingsRecordDocumentEquality();

  @override
  bool equals(SettingsRecord? e1, SettingsRecord? e2) {
    return e1?.goalVisibility == e2?.goalVisibility &&
        e1?.notificationsEnabled == e2?.notificationsEnabled &&
        e1?.consentLeaderboard == e2?.consentLeaderboard &&
        e1?.consentCelebrations == e2?.consentCelebrations &&
        e1?.name == e2?.name &&
        e1?.department == e2?.department &&
        e1?.avatarUrl == e2?.avatarUrl;
  }

  @override
  int hash(SettingsRecord? e) => const ListEquality().hash([
        e?.goalVisibility,
        e?.notificationsEnabled,
        e?.consentLeaderboard,
        e?.consentCelebrations,
        e?.name,
        e?.department,
        e?.avatarUrl
      ]);

  @override
  bool isValidKey(Object? o) => o is SettingsRecord;
}
