import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentAndInfoRecord extends FirestoreRecord {
  DocumentAndInfoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "document_front_p" field.
  String? _documentFrontP;
  String get documentFrontP => _documentFrontP ?? '';
  bool hasDocumentFrontP() => _documentFrontP != null;

  // "document_back_p" field.
  String? _documentBackP;
  String get documentBackP => _documentBackP ?? '';
  bool hasDocumentBackP() => _documentBackP != null;

  // "video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "bank" field.
  String? _bank;
  String get bank => _bank ?? '';
  bool hasBank() => _bank != null;

  // "account_number" field.
  int? _accountNumber;
  int get accountNumber => _accountNumber ?? 0;
  bool hasAccountNumber() => _accountNumber != null;

  // "account_type" field.
  String? _accountType;
  String get accountType => _accountType ?? '';
  bool hasAccountType() => _accountType != null;

  // "agency_number" field.
  int? _agencyNumber;
  int get agencyNumber => _agencyNumber ?? 0;
  bool hasAgencyNumber() => _agencyNumber != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "binance_pay_email" field.
  String? _binancePayEmail;
  String get binancePayEmail => _binancePayEmail ?? '';
  bool hasBinancePayEmail() => _binancePayEmail != null;

  // "associated_user" field.
  String? _associatedUser;
  String get associatedUser => _associatedUser ?? '';
  bool hasAssociatedUser() => _associatedUser != null;

  // "legal_identity_signature" field.
  bool? _legalIdentitySignature;
  bool get legalIdentitySignature => _legalIdentitySignature ?? false;
  bool hasLegalIdentitySignature() => _legalIdentitySignature != null;

  // "data_management_legal_signature" field.
  bool? _dataManagementLegalSignature;
  bool get dataManagementLegalSignature =>
      _dataManagementLegalSignature ?? false;
  bool hasDataManagementLegalSignature() =>
      _dataManagementLegalSignature != null;

  void _initializeFields() {
    _documentFrontP = snapshotData['document_front_p'] as String?;
    _documentBackP = snapshotData['document_back_p'] as String?;
    _video = snapshotData['video'] as String?;
    _bank = snapshotData['bank'] as String?;
    _accountNumber = castToType<int>(snapshotData['account_number']);
    _accountType = snapshotData['account_type'] as String?;
    _agencyNumber = castToType<int>(snapshotData['agency_number']);
    _address = snapshotData['address'] as String?;
    _country = snapshotData['country'] as String?;
    _city = snapshotData['city'] as String?;
    _binancePayEmail = snapshotData['binance_pay_email'] as String?;
    _associatedUser = snapshotData['associated_user'] as String?;
    _legalIdentitySignature = snapshotData['legal_identity_signature'] as bool?;
    _dataManagementLegalSignature =
        snapshotData['data_management_legal_signature'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documentAndInfo');

  static Stream<DocumentAndInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentAndInfoRecord.fromSnapshot(s));

  static Future<DocumentAndInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentAndInfoRecord.fromSnapshot(s));

  static DocumentAndInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentAndInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentAndInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentAndInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentAndInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentAndInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentAndInfoRecordData({
  String? documentFrontP,
  String? documentBackP,
  String? video,
  String? bank,
  int? accountNumber,
  String? accountType,
  int? agencyNumber,
  String? address,
  String? country,
  String? city,
  String? binancePayEmail,
  String? associatedUser,
  bool? legalIdentitySignature,
  bool? dataManagementLegalSignature,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'document_front_p': documentFrontP,
      'document_back_p': documentBackP,
      'video': video,
      'bank': bank,
      'account_number': accountNumber,
      'account_type': accountType,
      'agency_number': agencyNumber,
      'address': address,
      'country': country,
      'city': city,
      'binance_pay_email': binancePayEmail,
      'associated_user': associatedUser,
      'legal_identity_signature': legalIdentitySignature,
      'data_management_legal_signature': dataManagementLegalSignature,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentAndInfoRecordDocumentEquality
    implements Equality<DocumentAndInfoRecord> {
  const DocumentAndInfoRecordDocumentEquality();

  @override
  bool equals(DocumentAndInfoRecord? e1, DocumentAndInfoRecord? e2) {
    return e1?.documentFrontP == e2?.documentFrontP &&
        e1?.documentBackP == e2?.documentBackP &&
        e1?.video == e2?.video &&
        e1?.bank == e2?.bank &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.accountType == e2?.accountType &&
        e1?.agencyNumber == e2?.agencyNumber &&
        e1?.address == e2?.address &&
        e1?.country == e2?.country &&
        e1?.city == e2?.city &&
        e1?.binancePayEmail == e2?.binancePayEmail &&
        e1?.associatedUser == e2?.associatedUser &&
        e1?.legalIdentitySignature == e2?.legalIdentitySignature &&
        e1?.dataManagementLegalSignature == e2?.dataManagementLegalSignature;
  }

  @override
  int hash(DocumentAndInfoRecord? e) => const ListEquality().hash([
        e?.documentFrontP,
        e?.documentBackP,
        e?.video,
        e?.bank,
        e?.accountNumber,
        e?.accountType,
        e?.agencyNumber,
        e?.address,
        e?.country,
        e?.city,
        e?.binancePayEmail,
        e?.associatedUser,
        e?.legalIdentitySignature,
        e?.dataManagementLegalSignature
      ]);

  @override
  bool isValidKey(Object? o) => o is DocumentAndInfoRecord;
}
