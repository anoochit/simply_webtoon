/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class Library extends _i1.SerializableEntity {
  Library._({
    this.id,
    required this.userInfoId,
    this.userInfo,
    required this.espisodeId,
    this.espisode,
    required this.bookId,
    this.book,
  });

  factory Library({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required int espisodeId,
    _i3.Espisode? espisode,
    required int bookId,
    _i3.Book? book,
  }) = _LibraryImpl;

  factory Library.fromJson(Map<String, dynamic> jsonSerialization) {
    return Library(
      id: jsonSerialization['id'] as int?,
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i2.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
      espisodeId: jsonSerialization['espisodeId'] as int,
      espisode: jsonSerialization['espisode'] == null
          ? null
          : _i3.Espisode.fromJson(
              (jsonSerialization['espisode'] as Map<String, dynamic>)),
      bookId: jsonSerialization['bookId'] as int,
      book: jsonSerialization['book'] == null
          ? null
          : _i3.Book.fromJson(
              (jsonSerialization['book'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userInfoId;

  _i2.UserInfo? userInfo;

  int espisodeId;

  _i3.Espisode? espisode;

  int bookId;

  _i3.Book? book;

  Library copyWith({
    int? id,
    int? userInfoId,
    _i2.UserInfo? userInfo,
    int? espisodeId,
    _i3.Espisode? espisode,
    int? bookId,
    _i3.Book? book,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
      'espisodeId': espisodeId,
      if (espisode != null) 'espisode': espisode?.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
    };
  }
}

class _Undefined {}

class _LibraryImpl extends Library {
  _LibraryImpl({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required int espisodeId,
    _i3.Espisode? espisode,
    required int bookId,
    _i3.Book? book,
  }) : super._(
          id: id,
          userInfoId: userInfoId,
          userInfo: userInfo,
          espisodeId: espisodeId,
          espisode: espisode,
          bookId: bookId,
          book: book,
        );

  @override
  Library copyWith({
    Object? id = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
    int? espisodeId,
    Object? espisode = _Undefined,
    int? bookId,
    Object? book = _Undefined,
  }) {
    return Library(
      id: id is int? ? id : this.id,
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i2.UserInfo? ? userInfo : this.userInfo?.copyWith(),
      espisodeId: espisodeId ?? this.espisodeId,
      espisode:
          espisode is _i3.Espisode? ? espisode : this.espisode?.copyWith(),
      bookId: bookId ?? this.bookId,
      book: book is _i3.Book? ? book : this.book?.copyWith(),
    );
  }
}
