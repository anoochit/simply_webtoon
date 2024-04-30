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

abstract class Espisode extends _i1.TableRow {
  Espisode._({
    int? id,
    required this.title,
    required this.cover,
    required this.image,
    required this.bookId,
    this.book,
    this.libraries,
  }) : super(id);

  factory Espisode({
    int? id,
    required String title,
    required String cover,
    required String image,
    required int bookId,
    _i2.Book? book,
    List<_i2.Library>? libraries,
  }) = _EspisodeImpl;

  factory Espisode.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Espisode(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      cover:
          serializationManager.deserialize<String>(jsonSerialization['cover']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
      bookId:
          serializationManager.deserialize<int>(jsonSerialization['bookId']),
      book: serializationManager
          .deserialize<_i2.Book?>(jsonSerialization['book']),
      libraries: serializationManager
          .deserialize<List<_i2.Library>?>(jsonSerialization['libraries']),
    );
  }

  static final t = EspisodeTable();

  static const db = EspisodeRepository._();

  String title;

  String cover;

  String image;

  int bookId;

  _i2.Book? book;

  List<_i2.Library>? libraries;

  @override
  _i1.Table get table => t;

  Espisode copyWith({
    int? id,
    String? title,
    String? cover,
    String? image,
    int? bookId,
    _i2.Book? book,
    List<_i2.Library>? libraries,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'cover': cover,
      'image': image,
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
      if (libraries != null)
        'libraries': libraries?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'cover': cover,
      'image': image,
      'bookId': bookId,
      if (book != null) 'book': book?.allToJson(),
      if (libraries != null)
        'libraries': libraries?.toJson(valueToJson: (v) => v.allToJson()),
    };
  }

  static EspisodeInclude include({
    _i2.BookInclude? book,
    _i2.LibraryIncludeList? libraries,
  }) {
    return EspisodeInclude._(
      book: book,
      libraries: libraries,
    );
  }

  static EspisodeIncludeList includeList({
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EspisodeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EspisodeTable>? orderByList,
    EspisodeInclude? include,
  }) {
    return EspisodeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Espisode.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Espisode.t),
      include: include,
    );
  }
}

class _Undefined {}

class _EspisodeImpl extends Espisode {
  _EspisodeImpl({
    int? id,
    required String title,
    required String cover,
    required String image,
    required int bookId,
    _i2.Book? book,
    List<_i2.Library>? libraries,
  }) : super._(
          id: id,
          title: title,
          cover: cover,
          image: image,
          bookId: bookId,
          book: book,
          libraries: libraries,
        );

  @override
  Espisode copyWith({
    Object? id = _Undefined,
    String? title,
    String? cover,
    String? image,
    int? bookId,
    Object? book = _Undefined,
    Object? libraries = _Undefined,
  }) {
    return Espisode(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      cover: cover ?? this.cover,
      image: image ?? this.image,
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
      libraries:
          libraries is List<_i2.Library>? ? libraries : this.libraries?.clone(),
    );
  }
}

class EspisodeTable extends _i1.Table {
  EspisodeTable({super.tableRelation}) : super(tableName: 'espisode') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    cover = _i1.ColumnString(
      'cover',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
    bookId = _i1.ColumnInt(
      'bookId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString cover;

  late final _i1.ColumnString image;

  late final _i1.ColumnInt bookId;

  _i2.BookTable? _book;

  _i2.LibraryTable? ___libraries;

  _i1.ManyRelation<_i2.LibraryTable>? _libraries;

  _i2.BookTable get book {
    if (_book != null) return _book!;
    _book = _i1.createRelationTable(
      relationFieldName: 'book',
      field: Espisode.t.bookId,
      foreignField: _i2.Book.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookTable(tableRelation: foreignTableRelation),
    );
    return _book!;
  }

  _i2.LibraryTable get __libraries {
    if (___libraries != null) return ___libraries!;
    ___libraries = _i1.createRelationTable(
      relationFieldName: '__libraries',
      field: Espisode.t.id,
      foreignField: _i2.Library.t.espisodeId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LibraryTable(tableRelation: foreignTableRelation),
    );
    return ___libraries!;
  }

  _i1.ManyRelation<_i2.LibraryTable> get libraries {
    if (_libraries != null) return _libraries!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'libraries',
      field: Espisode.t.id,
      foreignField: _i2.Library.t.espisodeId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LibraryTable(tableRelation: foreignTableRelation),
    );
    _libraries = _i1.ManyRelation<_i2.LibraryTable>(
      tableWithRelations: relationTable,
      table: _i2.LibraryTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _libraries!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        cover,
        image,
        bookId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'book') {
      return book;
    }
    if (relationField == 'libraries') {
      return __libraries;
    }
    return null;
  }
}

class EspisodeInclude extends _i1.IncludeObject {
  EspisodeInclude._({
    _i2.BookInclude? book,
    _i2.LibraryIncludeList? libraries,
  }) {
    _book = book;
    _libraries = libraries;
  }

  _i2.BookInclude? _book;

  _i2.LibraryIncludeList? _libraries;

  @override
  Map<String, _i1.Include?> get includes => {
        'book': _book,
        'libraries': _libraries,
      };

  @override
  _i1.Table get table => Espisode.t;
}

class EspisodeIncludeList extends _i1.IncludeList {
  EspisodeIncludeList._({
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Espisode.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Espisode.t;
}

class EspisodeRepository {
  const EspisodeRepository._();

  final attach = const EspisodeAttachRepository._();

  final attachRow = const EspisodeAttachRowRepository._();

  final detach = const EspisodeDetachRepository._();

  final detachRow = const EspisodeDetachRowRepository._();

  Future<List<Espisode>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EspisodeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EspisodeTable>? orderByList,
    _i1.Transaction? transaction,
    EspisodeInclude? include,
  }) async {
    return session.db.find<Espisode>(
      where: where?.call(Espisode.t),
      orderBy: orderBy?.call(Espisode.t),
      orderByList: orderByList?.call(Espisode.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Espisode?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    int? offset,
    _i1.OrderByBuilder<EspisodeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EspisodeTable>? orderByList,
    _i1.Transaction? transaction,
    EspisodeInclude? include,
  }) async {
    return session.db.findFirstRow<Espisode>(
      where: where?.call(Espisode.t),
      orderBy: orderBy?.call(Espisode.t),
      orderByList: orderByList?.call(Espisode.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Espisode?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    EspisodeInclude? include,
  }) async {
    return session.db.findById<Espisode>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Espisode>> insert(
    _i1.Session session,
    List<Espisode> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Espisode>(
      rows,
      transaction: transaction,
    );
  }

  Future<Espisode> insertRow(
    _i1.Session session,
    Espisode row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Espisode>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Espisode>> update(
    _i1.Session session,
    List<Espisode> rows, {
    _i1.ColumnSelections<EspisodeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Espisode>(
      rows,
      columns: columns?.call(Espisode.t),
      transaction: transaction,
    );
  }

  Future<Espisode> updateRow(
    _i1.Session session,
    Espisode row, {
    _i1.ColumnSelections<EspisodeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Espisode>(
      row,
      columns: columns?.call(Espisode.t),
      transaction: transaction,
    );
  }

  Future<List<int>> delete(
    _i1.Session session,
    List<Espisode> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Espisode>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Espisode row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Espisode>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EspisodeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Espisode>(
      where: where(Espisode.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Espisode>(
      where: where?.call(Espisode.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class EspisodeAttachRepository {
  const EspisodeAttachRepository._();

  Future<void> libraries(
    _i1.Session session,
    Espisode espisode,
    List<_i2.Library> library,
  ) async {
    if (library.any((e) => e.id == null)) {
      throw ArgumentError.notNull('library.id');
    }
    if (espisode.id == null) {
      throw ArgumentError.notNull('espisode.id');
    }

    var $library =
        library.map((e) => e.copyWith(espisodeId: espisode.id)).toList();
    await session.db.update<_i2.Library>(
      $library,
      columns: [_i2.Library.t.espisodeId],
    );
  }
}

class EspisodeAttachRowRepository {
  const EspisodeAttachRowRepository._();

  Future<void> book(
    _i1.Session session,
    Espisode espisode,
    _i2.Book book,
  ) async {
    if (espisode.id == null) {
      throw ArgumentError.notNull('espisode.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $espisode = espisode.copyWith(bookId: book.id);
    await session.db.updateRow<Espisode>(
      $espisode,
      columns: [Espisode.t.bookId],
    );
  }

  Future<void> libraries(
    _i1.Session session,
    Espisode espisode,
    _i2.Library library,
  ) async {
    if (library.id == null) {
      throw ArgumentError.notNull('library.id');
    }
    if (espisode.id == null) {
      throw ArgumentError.notNull('espisode.id');
    }

    var $library = library.copyWith(espisodeId: espisode.id);
    await session.db.updateRow<_i2.Library>(
      $library,
      columns: [_i2.Library.t.espisodeId],
    );
  }
}

class EspisodeDetachRepository {
  const EspisodeDetachRepository._();

  Future<void> libraries(
    _i1.Session session,
    List<_i2.Library> library,
  ) async {
    if (library.any((e) => e.id == null)) {
      throw ArgumentError.notNull('library.id');
    }

    var $library = library.map((e) => e.copyWith(espisodeId: null)).toList();
    await session.db.update<_i2.Library>(
      $library,
      columns: [_i2.Library.t.espisodeId],
    );
  }
}

class EspisodeDetachRowRepository {
  const EspisodeDetachRowRepository._();

  Future<void> libraries(
    _i1.Session session,
    _i2.Library library,
  ) async {
    if (library.id == null) {
      throw ArgumentError.notNull('library.id');
    }

    var $library = library.copyWith(espisodeId: null);
    await session.db.updateRow<_i2.Library>(
      $library,
      columns: [_i2.Library.t.espisodeId],
    );
  }
}
