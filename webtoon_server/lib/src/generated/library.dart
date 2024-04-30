/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i2;
import 'protocol.dart' as _i3;

abstract class Library extends _i1.TableRow {
  Library._({
    int? id,
    required this.userInfoId,
    this.userInfo,
    required this.espisodeId,
    this.espisode,
    required this.bookId,
    this.book,
  }) : super(id);

  factory Library({
    int? id,
    required int userInfoId,
    _i2.UserInfo? userInfo,
    required int espisodeId,
    _i3.Espisode? espisode,
    required int bookId,
    _i3.Book? book,
  }) = _LibraryImpl;

  factory Library.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Library(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      userInfoId: serializationManager
          .deserialize<int>(jsonSerialization['userInfoId']),
      userInfo: serializationManager
          .deserialize<_i2.UserInfo?>(jsonSerialization['userInfo']),
      espisodeId: serializationManager
          .deserialize<int>(jsonSerialization['espisodeId']),
      espisode: serializationManager
          .deserialize<_i3.Espisode?>(jsonSerialization['espisode']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i3.Book?>(jsonSerialization['book']),
    );
  }

  static final t = LibraryTable();

  static const db = LibraryRepository._();

  int userInfoId;

  _i2.UserInfo? userInfo;

  int espisodeId;

  _i3.Espisode? espisode;

  int bookId;

  _i3.Book? book;

  @override
  _i1.Table get table => t;

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

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'userInfoId': userInfoId,
      if (userInfo != null) 'userInfo': userInfo?.allToJson(),
      'espisodeId': espisodeId,
      if (espisode != null) 'espisode': espisode?.allToJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.allToJson(),
    };
  }

  static LibraryInclude include({
    _i2.UserInfoInclude? userInfo,
    _i3.EspisodeInclude? espisode,
    _i3.BookInclude? book,
  }) {
    return LibraryInclude._(
      userInfo: userInfo,
      espisode: espisode,
      book: book,
    );
  }

  static LibraryIncludeList includeList({
    _i1.WhereExpressionBuilder<LibraryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LibraryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LibraryTable>? orderByList,
    LibraryInclude? include,
  }) {
    return LibraryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Library.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Library.t),
      include: include,
    );
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

class LibraryTable extends _i1.Table {
  LibraryTable({super.tableRelation}) : super(tableName: 'library') {
    userInfoId = _i1.ColumnInt(
      'userInfoId',
      this,
    );
    espisodeId = _i1.ColumnInt(
      'espisodeId',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  late final _i1.ColumnInt userInfoId;

  _i2.UserInfoTable? _userInfo;

  late final _i1.ColumnInt espisodeId;

  _i3.EspisodeTable? _espisode;

  late final _i1.ColumnInt bookId;

  _i3.BookTable? _book;

  _i2.UserInfoTable get userInfo {
    if (_userInfo != null) return _userInfo!;
    _userInfo = _i1.createRelationTable(
      relationFieldName: 'userInfo',
      field: Library.t.userInfoId,
      foreignField: _i2.UserInfo.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.UserInfoTable(tableRelation: foreignTableRelation),
    );
    return _userInfo!;
  }

  _i3.EspisodeTable get espisode {
    if (_espisode != null) return _espisode!;
    _espisode = _i1.createRelationTable(
      relationFieldName: 'espisode',
      field: Library.t.espisodeId,
      foreignField: _i3.Espisode.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.EspisodeTable(tableRelation: foreignTableRelation),
    );
    return _espisode!;
  }

  _i3.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: Library.t.bookId,
      foreignField: _i3.Book.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i3.BookTable(tableRelation: foreignTableRelation),
    );
    return _book!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        userInfoId,
        espisodeId,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'userInfo') {
      return userInfo;
    }
    if (relationField == 'espisode') {
      return espisode;
    }
    if (relationField == 'book') {
      return book;
    }
    return null;
  }
}

class LibraryInclude extends _i1.IncludeObject {
  LibraryInclude._({
    _i2.UserInfoInclude? userInfo,
    _i3.EspisodeInclude? espisode,
    _i3.BookInclude? book,
  }) {
    _userInfo = userInfo;
    _espisode = espisode;
    _book = book;
  }

  _i2.UserInfoInclude? _userInfo;

  _i3.EspisodeInclude? _espisode;

  _i3.BookInclude? _book;

  @override
  Map<String, _i1.Include?> get includes => {
        'userInfo': _userInfo,
        'espisode': _espisode,
        'book': _book,
      };

  @override
  _i1.Table get table => Library.t;
}

class LibraryIncludeList extends _i1.IncludeList {
  LibraryIncludeList._({
    _i1.WhereExpressionBuilder<LibraryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Library.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Library.t;
}

class LibraryRepository {
  const LibraryRepository._();

  final attachRow = const LibraryAttachRowRepository._();

  Future<List<Library>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LibraryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<LibraryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LibraryTable>? orderByList,
    _i1.Transaction? transaction,
    LibraryInclude? include,
  }) async {
    return session.db.find<Library>(
      where: where?.call(Library.t),
      orderBy: orderBy?.call(Library.t),
      orderByList: orderByList?.call(Library.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Library?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LibraryTable>? where,
    int? offset,
    _i1.OrderByBuilder<LibraryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<LibraryTable>? orderByList,
    _i1.Transaction? transaction,
    LibraryInclude? include,
  }) async {
    return session.db.findFirstRow<Library>(
      where: where?.call(Library.t),
      orderBy: orderBy?.call(Library.t),
      orderByList: orderByList?.call(Library.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Library?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    LibraryInclude? include,
  }) async {
    return session.db.findById<Library>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Library>> insert(
    _i1.Session session,
    List<Library> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Library>(
      rows,
      transaction: transaction,
    );
  }

  Future<Library> insertRow(
    _i1.Session session,
    Library row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Library>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Library>> update(
    _i1.Session session,
    List<Library> rows, {
    _i1.ColumnSelections<LibraryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Library>(
      rows,
      columns: columns?.call(Library.t),
      transaction: transaction,
    );
  }

  Future<Library> updateRow(
    _i1.Session session,
    Library row, {
    _i1.ColumnSelections<LibraryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Library>(
      row,
      columns: columns?.call(Library.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Library> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Library>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Library row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Library>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<LibraryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Library>(
      where: where(Library.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<LibraryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Library>(
      where: where?.call(Library.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class LibraryAttachRowRepository {
  const LibraryAttachRowRepository._();

  Future<void> userInfo(
    _i1.Session session,
    Library library,
    _i2.UserInfo userInfo,
  ) async {
    if (library.id == null) {
      throw ArgumentError.notNull('library.id');
    }
    if (userInfo.id == null) {
      throw ArgumentError.notNull('userInfo.id');
    }

    var $library = library.copyWith(userInfoId: userInfo.id);
    await session.db.updateRow<Library>(
      $library,
      columns: [Library.t.userInfoId],
    );
  }

  Future<void> espisode(
    _i1.Session session,
    Library library,
    _i3.Espisode espisode,
  ) async {
    if (library.id == null) {
      throw ArgumentError.notNull('library.id');
    }
    if (espisode.id == null) {
      throw ArgumentError.notNull('espisode.id');
    }

    var $library = library.copyWith(espisodeId: espisode.id);
    await session.db.updateRow<Library>(
      $library,
      columns: [Library.t.espisodeId],
    );
  }

  Future<void> book(
    _i1.Session session,
    Library library,
    _i3.Book book,
  ) async {
    if (library.id == null) {
      throw ArgumentError.notNull('library.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $library = library.copyWith(bookId: book.id);
    await session.db.updateRow<Library>(
      $library,
      columns: [Library.t.bookId],
    );
  }
}
