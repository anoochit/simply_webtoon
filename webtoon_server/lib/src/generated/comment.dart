/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i3;
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Comment extends _i1.TableRow {
  Comment._({
    int? id,
    required this.comment,
    required this.timestamp,
    required this.bookId,
    this.book,
    this.parentId,
    this.parent,
    this.replies,
    required this.userInfoId,
    this.userInfo,
  }) : super(id);

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

  static final t = CommentTable();

  static const db = CommentRepository._();

  String comment;

  DateTime timestamp;

  int bookId;

  _i2.Book? book;

  int? parentId;

  _i2.Comment? parent;

  List<_i2.Comment>? replies;

  int userInfoId;

  _i3.UserInfo? userInfo;

  @override
  _i1.Table get table => t;

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
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'comment': comment,
      'timestamp': timestamp.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.allToJson(),
      if (parentId != null) 'parentId': parentId,
      if (parent != null) 'parent': parent?.allToJson(),
      if (replies != null)
        'replies': replies?.toJson(valueToJson: (v) => v.allToJson()),
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.allToJson(),
    };
  }

  static CommentInclude include({
    _i2.BookInclude? book,
    _i2.CommentInclude? parent,
    _i2.CommentIncludeList? replies,
    _i3.UserInfoInclude? userInfo,
  }) {
    return CommentInclude._(
      book: book,
      parent: parent,
      replies: replies,
      userInfo: userInfo,
    );
  }

  static CommentIncludeList includeList({
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    CommentInclude? include,
  }) {
    return CommentIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Comment.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Comment.t),
      include: include,
    );
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

class CommentTable extends _i1.Table {
  CommentTable({super.tableRelation}) : super(tableName: 'comment') {
    comment = _i1.ColumnString(
      'comment',
      this,
    );
    timestamp = _i1.ColumnDateTime(
      'timestamp',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
    parentId = _i1.ColumnInt(
      'parentId',
      this,
    );
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
  }

  late final _i1.ColumnString comment;

  late final _i1.ColumnDateTime timestamp;

  late final _i1.ColumnInt bookId;

  _i2.BookTable? _book;

  late final _i1.ColumnInt parentId;

  _i2.CommentTable? _parent;

  _i2.CommentTable? ___replies;

  _i1.ManyRelation<_i2.CommentTable>? _replies;

  late final _i1.ColumnInt userInfoId;

  _i3.UserInfoTable? _userInfo;

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: Comment.t.bookId,
      foreignField: _i2.Book.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookTable(tableRelation: foreignTableRelation),
    );
    return _book!;
  }

  _i2.CommentTable get parent {
    if (_parent != null) return _parent!;
    _parent = _i1.createRelationTable(
      relationFieldName: 'parent',
      field: Comment.t.parentId,
      foreignField: _i2.Comment.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CommentTable(tableRelation: foreignTableRelation),
    );
    return _parent!;
  }

  _i2.CommentTable get __replies {
    if (___replies != null) return ___replies!;
    ___replies = _i1.createRelationTable(
      relationFieldName: '__replies',
      field: Comment.t.id,
      foreignField: _i2.Comment.t.parentId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CommentTable(tableRelation: foreignTableRelation),
    );
    return ___replies!;
  }

  _i3.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: Comment.t.userInfoId,
      foreignField: _i3.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i1.ManyRelation<_i2.CommentTable> get replies {
    if (_replies != null) return _replies!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'replies',
      field: Comment.t.id,
      foreignField: _i2.Comment.t.parentId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CommentTable(tableRelation: foreignTableRelation),
    );
    _replies = _i1.ManyRelation<_i2.CommentTable>(
      tableWithRelations: relationTable,
      table: _i2.CommentTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _replies!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        comment,
        timestamp,
        bookId,
        parentId,
        userInfoId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'book') {
      return book;
    }
    if (relationField == 'parent') {
      return parent;
    }
    if (relationField == 'replies') {
      return __replies;
    }
    if (relationField == 'userInfo') {
      return userInfo;
    }
    return null;
  }
}

class CommentInclude extends _i1.IncludeObject {
  CommentInclude._({
    _i2.BookInclude? book,
    _i2.CommentInclude? parent,
    _i2.CommentIncludeList? replies,
    _i3.UserInfoInclude? userInfo,
  }) {
    _book = book;
    _parent = parent;
    _replies = replies;
    _userInfo = userInfo;
  }

  _i2.BookInclude? _book;

  _i2.CommentInclude? _parent;

  _i2.CommentIncludeList? _replies;

  _i3.UserInfoInclude? _userInfo;

  @override
  Map<String, _i1.Include?> get includes => {
        'book': _book,
        'parent': _parent,
        'replies': _replies,
        'userInfo': _userInfo,
      };

  @override
  _i1.Table get table => Comment.t;
}

class CommentIncludeList extends _i1.IncludeList {
  CommentIncludeList._({
    _i1.WhereExpressionBuilder<CommentTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Comment.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Comment.t;
}

class CommentRepository {
  const CommentRepository._();

  final attach = const CommentAttachRepository._();

  final attachRow = const CommentAttachRowRepository._();

  final detach = const CommentDetachRepository._();

  final detachRow = const CommentDetachRowRepository._();

  Future<List<Comment>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    _i1.Transaction? transaction,
    CommentInclude? include,
  }) async {
    return session.db.find<Comment>(
      where: where?.call(Comment.t),
      orderBy: orderBy?.call(Comment.t),
      orderByList: orderByList?.call(Comment.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Comment?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? offset,
    _i1.OrderByBuilder<CommentTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CommentTable>? orderByList,
    _i1.Transaction? transaction,
    CommentInclude? include,
  }) async {
    return session.db.findFirstRow<Comment>(
      where: where?.call(Comment.t),
      orderBy: orderBy?.call(Comment.t),
      orderByList: orderByList?.call(Comment.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Comment?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    CommentInclude? include,
  }) async {
    return session.db.findById<Comment>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Comment>> insert(
    _i1.Session session,
    List<Comment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Comment>(
      rows,
      transaction: transaction,
    );
  }

  Future<Comment> insertRow(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Comment>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Comment>> update(
    _i1.Session session,
    List<Comment> rows, {
    _i1.ColumnSelections<CommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Comment>(
      rows,
      columns: columns?.call(Comment.t),
      transaction: transaction,
    );
  }

  Future<Comment> updateRow(
    _i1.Session session,
    Comment row, {
    _i1.ColumnSelections<CommentTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Comment>(
      row,
      columns: columns?.call(Comment.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Comment> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Comment>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Comment row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Comment>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CommentTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Comment>(
      where: where(Comment.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CommentTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Comment>(
      where: where?.call(Comment.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class CommentAttachRepository {
  const CommentAttachRepository._();

  Future<void> replies(
    _i1.Session session,
    Comment comment,
    List<_i2.Comment> nestedComment,
  ) async {
    if (nestedComment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('nestedComment.id');
    }
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }

    var $nestedComment =
        nestedComment.map((e) => e.copyWith(parentId: comment.id)).toList();
    await session.db.update<_i2.Comment>(
      $nestedComment,
      columns: [_i2.Comment.t.parentId],
    );
  }
}

class CommentAttachRowRepository {
  const CommentAttachRowRepository._();

  Future<void> book(
    _i1.Session session,
    Comment comment,
    _i2.Book book,
  ) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $comment = comment.copyWith(bookId: book.id);
    await session.db.updateRow<Comment>(
      $comment,
      columns: [Comment.t.bookId],
    );
  }

  Future<void> parent(
    _i1.Session session,
    Comment comment,
    _i2.Comment parent,
  ) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (parent.id == null) {
      throw ArgumentError.notNull('parent.id');
    }

    var $comment = comment.copyWith(parentId: parent.id);
    await session.db.updateRow<Comment>(
      $comment,
      columns: [Comment.t.parentId],
    );
  }

  Future<void> userInfo(
    _i1.Session session,
    Comment comment,
    _i3.UserInfo userInfo,
  ) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $comment = comment.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<Comment>(
      $comment,
      columns: [Comment.t.userInfoId],
    );
  }

  Future<void> replies(
    _i1.Session session,
    Comment comment,
    _i2.Comment nestedComment,
  ) async {
    if (nestedComment.id == null) {
      throw ArgumentError.notNull('nestedComment.id');
    }
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }

    var $nestedComment = nestedComment.copyWith(parentId: comment.id);
    await session.db.updateRow<_i2.Comment>(
      $nestedComment,
      columns: [_i2.Comment.t.parentId],
    );
  }
}

class CommentDetachRepository {
  const CommentDetachRepository._();

  Future<void> replies(
    _i1.Session session,
    List<_i2.Comment> comment,
  ) async {
    if (comment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('comment.id');
    }

    var $comment = comment.map((e) => e.copyWith(parentId: null)).toList();
    await session.db.update<_i2.Comment>(
      $comment,
      columns: [_i2.Comment.t.parentId],
    );
  }
}

class CommentDetachRowRepository {
  const CommentDetachRowRepository._();

  Future<void> parent(
    _i1.Session session,
    Comment comment,
  ) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }

    var $comment = comment.copyWith(parentId: null);
    await session.db.updateRow<Comment>(
      $comment,
      columns: [Comment.t.parentId],
    );
  }

  Future<void> replies(
    _i1.Session session,
    _i2.Comment comment,
  ) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }

    var $comment = comment.copyWith(parentId: null);
    await session.db.updateRow<_i2.Comment>(
      $comment,
      columns: [_i2.Comment.t.parentId],
    );
  }
}
