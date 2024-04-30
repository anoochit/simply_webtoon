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

abstract class Comment extends _i1.SerializableEntity {
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

  factory Comment.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Comment(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      comment: serializationManager
          .deserialize<String>(jsonSerialization['comment']),
      timestamp: serializationManager
          .deserialize<DateTime>(jsonSerialization['timestamp']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
      parentId:
          serializationManager.deserialize<int?>(jsonSerialization['parentId']),
      parent: serializationManager
          .deserialize<_i2.Comment?>(jsonSerialization['parent']),
      replies: serializationManager
          .deserialize<List<_i2.Comment>?>(jsonSerialization['replies']),
      userInfoId: serializationManager
          .deserialize<int>(jsonSerialization['userInfoId']),
      userInfo: serializationManager
          .deserialize<_i3.UserInfo?>(jsonSerialization['userInfo']),
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
