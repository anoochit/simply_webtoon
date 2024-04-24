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
import 'package:serverpod_serialization/serverpod_serialization.dart';

abstract class Book extends _i1.TableRow {
  Book._({
    int? id,
    required this.title,
    required this.description,
    this.espisodes,
  }) : super(id);

  factory Book({
    int? id,
    required String title,
    required String description,
    List<_i2.Espisode>? espisodes,
  }) = _BookImpl;

  factory Book.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Book(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      description: serializationManager
          .deserialize<String>(jsonSerialization['description']),
      espisodes: serializationManager
          .deserialize<List<_i2.Espisode>?>(jsonSerialization['espisodes']),
    );
  }

  static final t = BookTable();

  static const db = BookRepository._();

  String title;

  String description;

  List<_i2.Espisode>? espisodes;

  @override
  _i1.Table get table => t;

  Book copyWith({
    int? id,
    String? title,
    String? description,
    List<_i2.Espisode>? espisodes,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      if (espisodes != null)
        'espisodes': espisodes?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      if (espisodes != null)
        'espisodes': espisodes?.toJson(valueToJson: (v) => v.allToJson()),
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  void setColumn(
    String columnName,
    value,
  ) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      case 'description':
        description = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Book>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.db.find<Book>(
      where: where != null ? where(Book.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Book?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.db.findSingleRow<Book>(
      where: where != null ? where(Book.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Book?> findById(
    _i1.Session session,
    int id, {
    BookInclude? include,
  }) async {
    return session.db.findById<Book>(
      id,
      include: include,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Book>(
      where: where(Book.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.update instead.')
  static Future<bool> update(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  @Deprecated(
      'Will be removed in 2.0.0. Use: db.insert instead. Important note: In db.insert, the object you pass in is no longer modified, instead a new copy with the added row is returned which contains the inserted id.')
  static Future<void> insert(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert(
      row,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.count instead.')
  static Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Book>(
      where: where != null ? where(Book.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static BookInclude include({_i2.EspisodeIncludeList? espisodes}) {
    return BookInclude._(espisodes: espisodes);
  }

  static BookIncludeList includeList({
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookTable>? orderByList,
    BookInclude? include,
  }) {
    return BookIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Book.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Book.t),
      include: include,
    );
  }
}

class _Undefined {}

class _BookImpl extends Book {
  _BookImpl({
    int? id,
    required String title,
    required String description,
    List<_i2.Espisode>? espisodes,
  }) : super._(
          id: id,
          title: title,
          description: description,
          espisodes: espisodes,
        );

  @override
  Book copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    Object? espisodes = _Undefined,
  }) {
    return Book(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      espisodes: espisodes is List<_i2.Espisode>?
          ? espisodes
          : this.espisodes?.clone(),
    );
  }
}

class BookTable extends _i1.Table {
  BookTable({super.tableRelation}) : super(tableName: 'book') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  _i2.EspisodeTable? ___espisodes;

  _i1.ManyRelation<_i2.EspisodeTable>? _espisodes;

  _i2.EspisodeTable get __espisodes {
    if (___espisodes != null) return ___espisodes!;
    ___espisodes = _i1.createRelationTable(
      relationFieldName: '__espisodes',
      field: Book.t.id,
      foreignField: _i2.Espisode.t.$_bookEspisodesBookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EspisodeTable(tableRelation: foreignTableRelation),
    );
    return ___espisodes!;
  }

  _i1.ManyRelation<_i2.EspisodeTable> get espisodes {
    if (_espisodes != null) return _espisodes!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'espisodes',
      field: Book.t.id,
      foreignField: _i2.Espisode.t.$_bookEspisodesBookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EspisodeTable(tableRelation: foreignTableRelation),
    );
    _espisodes = _i1.ManyRelation<_i2.EspisodeTable>(
      tableWithRelations: relationTable,
      table: _i2.EspisodeTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _espisodes!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'espisodes') {
      return __espisodes;
    }
    return null;
  }
}

@Deprecated('Use BookTable.t instead.')
BookTable tBook = BookTable();

class BookInclude extends _i1.IncludeObject {
  BookInclude._({_i2.EspisodeIncludeList? espisodes}) {
    _espisodes = espisodes;
  }

  _i2.EspisodeIncludeList? _espisodes;

  @override
  Map<String, _i1.Include?> get includes => {'espisodes': _espisodes};

  @override
  _i1.Table get table => Book.t;
}

class BookIncludeList extends _i1.IncludeList {
  BookIncludeList._({
    _i1.WhereExpressionBuilder<BookTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Book.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Book.t;
}

class BookRepository {
  const BookRepository._();

  final attach = const BookAttachRepository._();

  final attachRow = const BookAttachRowRepository._();

  final detach = const BookDetachRepository._();

  final detachRow = const BookDetachRowRepository._();

  Future<List<Book>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<BookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookTable>? orderByList,
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.dbNext.find<Book>(
      where: where?.call(Book.t),
      orderBy: orderBy?.call(Book.t),
      orderByList: orderByList?.call(Book.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Book?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? offset,
    _i1.OrderByBuilder<BookTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<BookTable>? orderByList,
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.dbNext.findFirstRow<Book>(
      where: where?.call(Book.t),
      orderBy: orderBy?.call(Book.t),
      orderByList: orderByList?.call(Book.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Book?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    BookInclude? include,
  }) async {
    return session.dbNext.findById<Book>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Book>> insert(
    _i1.Session session,
    List<Book> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Book>(
      rows,
      transaction: transaction,
    );
  }

  Future<Book> insertRow(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Book>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Book>> update(
    _i1.Session session,
    List<Book> rows, {
    _i1.ColumnSelections<BookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.update<Book>(
      rows,
      columns: columns?.call(Book.t),
      transaction: transaction,
    );
  }

  Future<Book> updateRow(
    _i1.Session session,
    Book row, {
    _i1.ColumnSelections<BookTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.updateRow<Book>(
      row,
      columns: columns?.call(Book.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Book> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.delete<Book>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Book>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Book>(
      where: where(Book.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<BookTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.count<Book>(
      where: where?.call(Book.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class BookAttachRepository {
  const BookAttachRepository._();

  Future<void> espisodes(
    _i1.Session session,
    Book book,
    List<_i2.Espisode> espisode,
  ) async {
    if (espisode.any((e) => e.id == null)) {
      throw ArgumentError.notNull('espisode.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $espisode = espisode
        .map((e) => _i2.EspisodeImplicit(
              e,
              $_bookEspisodesBookId: book.id,
            ))
        .toList();
    await session.dbNext.update<_i2.Espisode>(
      $espisode,
      columns: [_i2.Espisode.t.$_bookEspisodesBookId],
    );
  }
}

class BookAttachRowRepository {
  const BookAttachRowRepository._();

  Future<void> espisodes(
    _i1.Session session,
    Book book,
    _i2.Espisode espisode,
  ) async {
    if (espisode.id == null) {
      throw ArgumentError.notNull('espisode.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $espisode = _i2.EspisodeImplicit(
      espisode,
      $_bookEspisodesBookId: book.id,
    );
    await session.dbNext.updateRow<_i2.Espisode>(
      $espisode,
      columns: [_i2.Espisode.t.$_bookEspisodesBookId],
    );
  }
}

class BookDetachRepository {
  const BookDetachRepository._();

  Future<void> espisodes(
    _i1.Session session,
    List<_i2.Espisode> espisode,
  ) async {
    if (espisode.any((e) => e.id == null)) {
      throw ArgumentError.notNull('espisode.id');
    }

    var $espisode = espisode
        .map((e) => _i2.EspisodeImplicit(
              e,
              $_bookEspisodesBookId: null,
            ))
        .toList();
    await session.dbNext.update<_i2.Espisode>(
      $espisode,
      columns: [_i2.Espisode.t.$_bookEspisodesBookId],
    );
  }
}

class BookDetachRowRepository {
  const BookDetachRowRepository._();

  Future<void> espisodes(
    _i1.Session session,
    _i2.Espisode espisode,
  ) async {
    if (espisode.id == null) {
      throw ArgumentError.notNull('espisode.id');
    }

    var $espisode = _i2.EspisodeImplicit(
      espisode,
      $_bookEspisodesBookId: null,
    );
    await session.dbNext.updateRow<_i2.Espisode>(
      $espisode,
      columns: [_i2.Espisode.t.$_bookEspisodesBookId],
    );
  }
}
