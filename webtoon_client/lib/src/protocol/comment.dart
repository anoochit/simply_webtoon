/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i3;

abstract class Comment implements _i1.SerializableModel {
  Comment._({
    this.id,
    required this.comment,
    required this.timestamp,
    required this.bookId,
    this.book,
    this.parentId,
    this.parent,
    this.replies,
    required this.userInfoId,
    this.userInfo,
  });

  factory Comment({
    int? id,
    required String comment,
    required DateTime timestamp,
    required int bookId,
    _i2.Book? book,
    int? parentId,
    _i2.Comment? parent,
    List<_i2.Comment>? replies,
    required int userInfoId,
    _i3.UserInfo? userInfo,
  }) = _CommentImpl;

  factory Comment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Comment(
      id: jsonSerialization['id'] as int?,
      comment: jsonSerialization['comment'] as String,
      timestamp:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['timestamp']),
      bookId: jsonSerialization['bookId'] as int,
      book: jsonSerialization['book'] == null
          ? null
          : _i2.Book.fromJson(
              (jsonSerialization['book'] as Map<String, dynamic>)),
      parentId: jsonSerialization['parentId'] as int?,
      parent: jsonSerialization['parent'] == null
          ? null
          : _i2.Comment.fromJson(
              (jsonSerialization['parent'] as Map<String, dynamic>)),
      replies: (jsonSerialization['replies'] as List?)
          ?.map((e) => _i2.Comment.fromJson((e as Map<String, dynamic>)))
          .toList(),
      userInfoId: jsonSerialization['userInfoId'] as int,
      userInfo: jsonSerialization['userInfo'] == null
          ? null
          : _i3.UserInfo.fromJson(
              (jsonSerialization['userInfo'] as Map<String, dynamic>)),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String comment;

  DateTime timestamp;

  int bookId;

  _i2.Book? book;

  int? parentId;

  _i2.Comment? parent;

  List<_i2.Comment>? replies;

  int userInfoId;

  _i3.UserInfo? userInfo;

  Comment copyWith({
    int? id,
    String? comment,
    DateTime? timestamp,
    int? bookId,
    _i2.Book? book,
    int? parentId,
    _i2.Comment? parent,
    List<_i2.Comment>? replies,
    int? userInfoId,
    _i3.UserInfo? userInfo,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'comment': comment,
      'timestamp': timestamp.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
      if (parentId != null) 'parentId': parentId,
      if (parent != null) 'parent': parent?.toJson(),
      if (replies != null)
        'replies': replies?.toJson(valueToJson: (v) => v.toJson()),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CommentImpl extends Comment {
  _CommentImpl({
    int? id,
    required String comment,
    required DateTime timestamp,
    required int bookId,
    _i2.Book? book,
    int? parentId,
    _i2.Comment? parent,
    List<_i2.Comment>? replies,
    required int userInfoId,
    _i3.UserInfo? userInfo,
  }) : super._(
          id: id,
          comment: comment,
          timestamp: timestamp,
          bookId: bookId,
          book: book,
          parentId: parentId,
          parent: parent,
          replies: replies,
          userInfoId: userInfoId,
          userInfo: userInfo,
        );

  @override
  Comment copyWith({
    Object? id = _Undefined,
    String? comment,
    DateTime? timestamp,
    int? bookId,
    Object? book = _Undefined,
    Object? parentId = _Undefined,
    Object? parent = _Undefined,
    Object? replies = _Undefined,
    int? userInfoId,
    Object? userInfo = _Undefined,
  }) {
    return Comment(
      id: id is int? ? id : this.id,
      comment: comment ?? this.comment,
      timestamp: timestamp ?? this.timestamp,
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
      parentId: parentId is int? ? parentId : this.parentId,
      parent: parent is _i2.Comment? ? parent : this.parent?.copyWith(),
      replies: replies is List<_i2.Comment>? ? replies : this.replies?.clone(),
      userInfoId: userInfoId ?? this.userInfoId,
      userInfo:
          userInfo is _i3.UserInfo? ? userInfo : this.userInfo?.copyWith(),
    );
  }
}
