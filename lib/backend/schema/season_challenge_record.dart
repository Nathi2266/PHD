import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeasonChallengeRecord extends FirestoreRecord {
  SeasonChallengeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "seasonId" field.
  String? _seasonId;
  String get seasonId => _seasonId ?? '';
  bool hasSeasonId() => _seasonId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "participants" field.
  List<String>? _participants;
  List<String> get participants => _participants ?? const [];
  bool hasParticipants() => _participants != null;

  // "teamProgress" field.
  List<int>? _teamProgress;
  List<int> get teamProgress => _teamProgress ?? const [];
  bool hasTeamProgress() => _teamProgress != null;

  // "topPerformers" field.
  List<String>? _topPerformers;
  List<String> get topPerformers => _topPerformers ?? const [];
  bool hasTopPerformers() => _topPerformers != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "badgesAwarded" field.
  List<String>? _badgesAwarded;
  List<String> get badgesAwarded => _badgesAwarded ?? const [];
  bool hasBadgesAwarded() => _badgesAwarded != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "participantIds" field.
  List<String>? _participantIds;
  List<String> get participantIds => _participantIds ?? const [];
  bool hasParticipantIds() => _participantIds != null;

  // "challengeId" field.
  String? _challengeId;
  String get challengeId => _challengeId ?? '';
  bool hasChallengeId() => _challengeId != null;

  void _initializeFields() {
    _seasonId = snapshotData['seasonId'] as String?;
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _startDate = snapshotData['startDate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _participants = getDataList(snapshotData['participants']);
    _teamProgress = getDataList(snapshotData['teamProgress']);
    _topPerformers = getDataList(snapshotData['topPerformers']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _badgesAwarded = getDataList(snapshotData['badgesAwarded']);
    _name = snapshotData['name'] as String?;
    _participantIds = getDataList(snapshotData['participantIds']);
    _challengeId = snapshotData['challengeId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SeasonChallenge');

  static Stream<SeasonChallengeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SeasonChallengeRecord.fromSnapshot(s));

  static Future<SeasonChallengeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SeasonChallengeRecord.fromSnapshot(s));

  static SeasonChallengeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SeasonChallengeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SeasonChallengeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SeasonChallengeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SeasonChallengeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SeasonChallengeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSeasonChallengeRecordData({
  String? seasonId,
  String? title,
  String? description,
  DateTime? startDate,
  DateTime? endDate,
  DateTime? createdAt,
  String? name,
  String? challengeId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'seasonId': seasonId,
      'title': title,
      'description': description,
      'startDate': startDate,
      'endDate': endDate,
      'createdAt': createdAt,
      'name': name,
      'challengeId': challengeId,
    }.withoutNulls,
  );

  return firestoreData;
}

class SeasonChallengeRecordDocumentEquality
    implements Equality<SeasonChallengeRecord> {
  const SeasonChallengeRecordDocumentEquality();

  @override
  bool equals(SeasonChallengeRecord? e1, SeasonChallengeRecord? e2) {
    const listEquality = ListEquality();
    return e1?.seasonId == e2?.seasonId &&
        e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.startDate == e2?.startDate &&
        e1?.endDate == e2?.endDate &&
        listEquality.equals(e1?.participants, e2?.participants) &&
        listEquality.equals(e1?.teamProgress, e2?.teamProgress) &&
        listEquality.equals(e1?.topPerformers, e2?.topPerformers) &&
        e1?.createdAt == e2?.createdAt &&
        listEquality.equals(e1?.badgesAwarded, e2?.badgesAwarded) &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.participantIds, e2?.participantIds) &&
        e1?.challengeId == e2?.challengeId;
  }

  @override
  int hash(SeasonChallengeRecord? e) => const ListEquality().hash([
        e?.seasonId,
        e?.title,
        e?.description,
        e?.startDate,
        e?.endDate,
        e?.participants,
        e?.teamProgress,
        e?.topPerformers,
        e?.createdAt,
        e?.badgesAwarded,
        e?.name,
        e?.participantIds,
        e?.challengeId
      ]);

  @override
  bool isValidKey(Object? o) => o is SeasonChallengeRecord;
}
