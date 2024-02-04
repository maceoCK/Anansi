import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class TextRecord extends FirestoreRecord {
  TextRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  bool hasText() => _text != null;

  // "from" field.
  String? _from;
  String get from => _from ?? '';
  bool hasFrom() => _from != null;

  void _initializeFields() {
    _text = snapshotData['text'] as String?;
    _from = snapshotData['from'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Text');

  static Stream<TextRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TextRecord.fromSnapshot(s));

  static Future<TextRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TextRecord.fromSnapshot(s));

  static TextRecord fromSnapshot(DocumentSnapshot snapshot) => TextRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TextRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TextRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TextRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TextRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTextRecordData({
  String? text,
  String? from,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'text': text,
      'from': from,
    }.withoutNulls,
  );

  return firestoreData;
}

class TextRecordDocumentEquality implements Equality<TextRecord> {
  const TextRecordDocumentEquality();

  @override
  bool equals(TextRecord? e1, TextRecord? e2) {
    return e1?.text == e2?.text && e1?.from == e2?.from;
  }

  @override
  int hash(TextRecord? e) => const ListEquality().hash([e?.text, e?.from]);

  @override
  bool isValidKey(Object? o) => o is TextRecord;
}
