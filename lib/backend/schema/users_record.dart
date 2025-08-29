import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "consentLeaderBoard" field.
  bool? _consentLeaderBoard;
  bool get consentLeaderBoard => _consentLeaderBoard ?? false;
  bool hasConsentLeaderBoard() => _consentLeaderBoard != null;

  // "department" field.
  String? _department;
  String get department => _department ?? '';
  bool hasDepartment() => _department != null;

  // "profileComplete" field.
  bool? _profileComplete;
  bool get profileComplete => _profileComplete ?? false;
  bool hasProfileComplete() => _profileComplete != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "avatarUrl" field.
  String? _avatarUrl;
  String get avatarUrl => _avatarUrl ?? '';
  bool hasAvatarUrl() => _avatarUrl != null;

  // "Displayname" field.
  String? _displayname;
  String get displayname => _displayname ?? '';
  bool hasDisplayname() => _displayname != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "role" field.
  List<String>? _role;
  List<String> get role => _role ?? const [];
  bool hasRole() => _role != null;

  // "passwordHash" field.
  String? _passwordHash;
  String get passwordHash => _passwordHash ?? '';
  bool hasPasswordHash() => _passwordHash != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as String?;
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _consentLeaderBoard = snapshotData['consentLeaderBoard'] as bool?;
    _department = snapshotData['department'] as String?;
    _profileComplete = snapshotData['profileComplete'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _avatarUrl = snapshotData['avatarUrl'] as String?;
    _displayname = snapshotData['Displayname'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _role = getDataList(snapshotData['role']);
    _passwordHash = snapshotData['passwordHash'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? userId,
  String? name,
  String? email,
  bool? consentLeaderBoard,
  String? department,
  bool? profileComplete,
  DateTime? createdTime,
  String? avatarUrl,
  String? displayname,
  String? displayName,
  String? photoUrl,
  String? passwordHash,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'name': name,
      'email': email,
      'consentLeaderBoard': consentLeaderBoard,
      'department': department,
      'profileComplete': profileComplete,
      'created_time': createdTime,
      'avatarUrl': avatarUrl,
      'Displayname': displayname,
      'display_name': displayName,
      'photo_url': photoUrl,
      'passwordHash': passwordHash,
      'createdAt': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userId == e2?.userId &&
        e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        e1?.consentLeaderBoard == e2?.consentLeaderBoard &&
        e1?.department == e2?.department &&
        e1?.profileComplete == e2?.profileComplete &&
        e1?.createdTime == e2?.createdTime &&
        e1?.avatarUrl == e2?.avatarUrl &&
        e1?.displayname == e2?.displayname &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        listEquality.equals(e1?.role, e2?.role) &&
        e1?.passwordHash == e2?.passwordHash &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.name,
        e?.email,
        e?.consentLeaderBoard,
        e?.department,
        e?.profileComplete,
        e?.createdTime,
        e?.avatarUrl,
        e?.displayname,
        e?.displayName,
        e?.photoUrl,
        e?.role,
        e?.passwordHash,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
