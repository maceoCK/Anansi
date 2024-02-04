import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfilesRecord extends FirestoreRecord {
  ProfilesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "lh_id" field.
  String? _lhId;
  String get lhId => _lhId ?? '';
  bool hasLhId() => _lhId != null;

  // "profile_url" field.
  String? _profileUrl;
  String get profileUrl => _profileUrl ?? '';
  bool hasProfileUrl() => _profileUrl != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "full_name" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  bool hasFullName() => _fullName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  bool hasAvatar() => _avatar != null;

  // "headline" field.
  String? _headline;
  String get headline => _headline ?? '';
  bool hasHeadline() => _headline != null;

  // "location_name" field.
  String? _locationName;
  String get locationName => _locationName ?? '';
  bool hasLocationName() => _locationName != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  bool hasSummary() => _summary != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "current_company" field.
  String? _currentCompany;
  String get currentCompany => _currentCompany ?? '';
  bool hasCurrentCompany() => _currentCompany != null;

  // "current_company_position" field.
  String? _currentCompanyPosition;
  String get currentCompanyPosition => _currentCompanyPosition ?? '';
  bool hasCurrentCompanyPosition() => _currentCompanyPosition != null;

  // "organization_1" field.
  String? _organization1;
  String get organization1 => _organization1 ?? '';
  bool hasOrganization1() => _organization1 != null;

  // "organization_id_1" field.
  int? _organizationId1;
  int get organizationId1 => _organizationId1 ?? 0;
  bool hasOrganizationId1() => _organizationId1 != null;

  // "organization_url_1" field.
  String? _organizationUrl1;
  String get organizationUrl1 => _organizationUrl1 ?? '';
  bool hasOrganizationUrl1() => _organizationUrl1 != null;

  // "organization_title_1" field.
  String? _organizationTitle1;
  String get organizationTitle1 => _organizationTitle1 ?? '';
  bool hasOrganizationTitle1() => _organizationTitle1 != null;

  // "organization_start_1" field.
  String? _organizationStart1;
  String get organizationStart1 => _organizationStart1 ?? '';
  bool hasOrganizationStart1() => _organizationStart1 != null;

  // "organization_description_1" field.
  String? _organizationDescription1;
  String get organizationDescription1 => _organizationDescription1 ?? '';
  bool hasOrganizationDescription1() => _organizationDescription1 != null;

  // "organization_location_1" field.
  String? _organizationLocation1;
  String get organizationLocation1 => _organizationLocation1 ?? '';
  bool hasOrganizationLocation1() => _organizationLocation1 != null;

  // "organization_website_1" field.
  String? _organizationWebsite1;
  String get organizationWebsite1 => _organizationWebsite1 ?? '';
  bool hasOrganizationWebsite1() => _organizationWebsite1 != null;

  // "organization_domain_1" field.
  String? _organizationDomain1;
  String get organizationDomain1 => _organizationDomain1 ?? '';
  bool hasOrganizationDomain1() => _organizationDomain1 != null;

  // "position_description_1" field.
  String? _positionDescription1;
  String get positionDescription1 => _positionDescription1 ?? '';
  bool hasPositionDescription1() => _positionDescription1 != null;

  // "skills" field.
  String? _skills;
  String get skills => _skills ?? '';
  bool hasSkills() => _skills != null;

  // "added" field.
  bool? _added;
  bool get added => _added ?? false;
  bool hasAdded() => _added != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _lhId = snapshotData['lh_id'] as String?;
    _profileUrl = snapshotData['profile_url'] as String?;
    _email = snapshotData['email'] as String?;
    _fullName = snapshotData['full_name'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _avatar = snapshotData['avatar'] as String?;
    _headline = snapshotData['headline'] as String?;
    _locationName = snapshotData['location_name'] as String?;
    _summary = snapshotData['summary'] as String?;
    _address = snapshotData['address'] as String?;
    _currentCompany = snapshotData['current_company'] as String?;
    _currentCompanyPosition =
        snapshotData['current_company_position'] as String?;
    _organization1 = snapshotData['organization_1'] as String?;
    _organizationId1 = castToType<int>(snapshotData['organization_id_1']);
    _organizationUrl1 = snapshotData['organization_url_1'] as String?;
    _organizationTitle1 = snapshotData['organization_title_1'] as String?;
    _organizationStart1 = snapshotData['organization_start_1'] as String?;
    _organizationDescription1 =
        snapshotData['organization_description_1'] as String?;
    _organizationLocation1 = snapshotData['organization_location_1'] as String?;
    _organizationWebsite1 = snapshotData['organization_website_1'] as String?;
    _organizationDomain1 = snapshotData['organization_domain_1'] as String?;
    _positionDescription1 = snapshotData['position_description_1'] as String?;
    _skills = snapshotData['skills'] as String?;
    _added = snapshotData['added'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Profiles');

  static Stream<ProfilesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfilesRecord.fromSnapshot(s));

  static Future<ProfilesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfilesRecord.fromSnapshot(s));

  static ProfilesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProfilesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfilesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfilesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfilesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfilesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfilesRecordData({
  String? id,
  String? lhId,
  String? profileUrl,
  String? email,
  String? fullName,
  String? firstName,
  String? lastName,
  String? avatar,
  String? headline,
  String? locationName,
  String? summary,
  String? address,
  String? currentCompany,
  String? currentCompanyPosition,
  String? organization1,
  int? organizationId1,
  String? organizationUrl1,
  String? organizationTitle1,
  String? organizationStart1,
  String? organizationDescription1,
  String? organizationLocation1,
  String? organizationWebsite1,
  String? organizationDomain1,
  String? positionDescription1,
  String? skills,
  bool? added,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'lh_id': lhId,
      'profile_url': profileUrl,
      'email': email,
      'full_name': fullName,
      'first_name': firstName,
      'last_name': lastName,
      'avatar': avatar,
      'headline': headline,
      'location_name': locationName,
      'summary': summary,
      'address': address,
      'current_company': currentCompany,
      'current_company_position': currentCompanyPosition,
      'organization_1': organization1,
      'organization_id_1': organizationId1,
      'organization_url_1': organizationUrl1,
      'organization_title_1': organizationTitle1,
      'organization_start_1': organizationStart1,
      'organization_description_1': organizationDescription1,
      'organization_location_1': organizationLocation1,
      'organization_website_1': organizationWebsite1,
      'organization_domain_1': organizationDomain1,
      'position_description_1': positionDescription1,
      'skills': skills,
      'added': added,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfilesRecordDocumentEquality implements Equality<ProfilesRecord> {
  const ProfilesRecordDocumentEquality();

  @override
  bool equals(ProfilesRecord? e1, ProfilesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.lhId == e2?.lhId &&
        e1?.profileUrl == e2?.profileUrl &&
        e1?.email == e2?.email &&
        e1?.fullName == e2?.fullName &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.avatar == e2?.avatar &&
        e1?.headline == e2?.headline &&
        e1?.locationName == e2?.locationName &&
        e1?.summary == e2?.summary &&
        e1?.address == e2?.address &&
        e1?.currentCompany == e2?.currentCompany &&
        e1?.currentCompanyPosition == e2?.currentCompanyPosition &&
        e1?.organization1 == e2?.organization1 &&
        e1?.organizationId1 == e2?.organizationId1 &&
        e1?.organizationUrl1 == e2?.organizationUrl1 &&
        e1?.organizationTitle1 == e2?.organizationTitle1 &&
        e1?.organizationStart1 == e2?.organizationStart1 &&
        e1?.organizationDescription1 == e2?.organizationDescription1 &&
        e1?.organizationLocation1 == e2?.organizationLocation1 &&
        e1?.organizationWebsite1 == e2?.organizationWebsite1 &&
        e1?.organizationDomain1 == e2?.organizationDomain1 &&
        e1?.positionDescription1 == e2?.positionDescription1 &&
        e1?.skills == e2?.skills &&
        e1?.added == e2?.added;
  }

  @override
  int hash(ProfilesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.lhId,
        e?.profileUrl,
        e?.email,
        e?.fullName,
        e?.firstName,
        e?.lastName,
        e?.avatar,
        e?.headline,
        e?.locationName,
        e?.summary,
        e?.address,
        e?.currentCompany,
        e?.currentCompanyPosition,
        e?.organization1,
        e?.organizationId1,
        e?.organizationUrl1,
        e?.organizationTitle1,
        e?.organizationStart1,
        e?.organizationDescription1,
        e?.organizationLocation1,
        e?.organizationWebsite1,
        e?.organizationDomain1,
        e?.positionDescription1,
        e?.skills,
        e?.added
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfilesRecord;
}
