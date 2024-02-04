import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ToConnectRecord extends FirestoreRecord {
  ToConnectRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "Commonality" field.
  String? _commonality;
  String get commonality => _commonality ?? '';
  bool hasCommonality() => _commonality != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "Position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _company = snapshotData['Company'] as String?;
    _commonality = snapshotData['Commonality'] as String?;
    _image = snapshotData['Image'] as String?;
    _position = snapshotData['Position'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('toConnect')
          : FirebaseFirestore.instance.collectionGroup('toConnect');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('toConnect').doc(id);

  static Stream<ToConnectRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToConnectRecord.fromSnapshot(s));

  static Future<ToConnectRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToConnectRecord.fromSnapshot(s));

  static ToConnectRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ToConnectRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToConnectRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToConnectRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToConnectRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToConnectRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToConnectRecordData({
  String? name,
  String? company,
  String? commonality,
  String? image,
  String? position,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Company': company,
      'Commonality': commonality,
      'Image': image,
      'Position': position,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToConnectRecordDocumentEquality implements Equality<ToConnectRecord> {
  const ToConnectRecordDocumentEquality();

  @override
  bool equals(ToConnectRecord? e1, ToConnectRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.company == e2?.company &&
        e1?.commonality == e2?.commonality &&
        e1?.image == e2?.image &&
        e1?.position == e2?.position;
  }

  @override
  int hash(ToConnectRecord? e) => const ListEquality()
      .hash([e?.name, e?.company, e?.commonality, e?.image, e?.position]);

  @override
  bool isValidKey(Object? o) => o is ToConnectRecord;
}
