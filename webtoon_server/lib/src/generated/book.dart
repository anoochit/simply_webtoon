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

abstract class Book extends _i1.TableRow implements _i1.ProtocolSerialization {
  Book._({
    int? id,
    required this.title,
    required this.description,
    required this.cover,
    required this.color,
    required this.publisher,
    this.espisodes,
    required this.categoryId,
    this.category,
    this.libraries,
    this.comments,
  }) : super(id);

  factory Book({
    int? id,
    required String title,
    required String description,
    required List<String> cover,
    required String color,
    required String publisher,
    List<_i2.Espisode>? espisodes,
    required int categoryId,
    _i2.Category? category,
    List<_i2.Library>? libraries,
    List<_i2.Comment>? comments,
  }) = _BookImpl;

  factory Book.fromJson(Map<String, dynamic> jsonSerialization) {
    return Book(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      cover:
          (jsonSerialization['cover'] as List).map((e) => e as String).toList(),
      color: jsonSerialization['color'] as String,
      publisher: jsonSerialization['publisher'] as String,
      espisodes: (jsonSerialization['espisodes'] as List?)
          ?.map((e) => _i2.Espisode.fromJson((e as Map<String, dynamic>)))
          .toList(),
      categoryId: jsonSerialization['categoryId'] as int,
      category: jsonSerialization['category'] == null
          ? null
          : _i2.Category.fromJson(
              (jsonSerialization['category'] as Map<String, dynamic>)),
      libraries: (jsonSerialization['libraries'] as List?)
          ?.map((e) => _i2.Library.fromJson((e as Map<String, dynamic>)))
          .toList(),
      comments: (jsonSerialization['comments'] as List?)
          ?.map((e) => _i2.Comment.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = BookTable();

  static const db = BookRepository._();

  String title;

  String description;

  List<String> cover;

  String color;

  String publisher;

  List<_i2.Espisode>? espisodes;

  int categoryId;

  _i2.Category? category;

  List<_i2.Library>? libraries;

  List<_i2.Comment>? comments;

  @override
  _i1.Table get table => t;

  Book copyWith({
    int? id,
    String? title,
    String? description,
    List<String>? cover,
    String? color,
    String? publisher,
    List<_i2.Espisode>? espisodes,
    int? categoryId,
    _i2.Category? category,
    List<_i2.Library>? libraries,
    List<_i2.Comment>? comments,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'cover': cover.toJson(),
      'color': color,
      'publisher': publisher,
      if (espisodes != null)
        'espisodes': espisodes?.toJson(valueToJson: (v) => v.toJson()),
      'categoryId': categoryId,
      if (category != null) 'category': category?.toJson(),
      if (libraries != null)
        'libraries': libraries?.toJson(valueToJson: (v) => v.toJson()),
      if (comments != null)
        'comments': comments?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'cover': cover.toJson(),
      'color': color,
      'publisher': publisher,
      if (espisodes != null)
        'espisodes':
            espisodes?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      'categoryId': categoryId,
      if (category != null) 'category': category?.toJsonForProtocol(),
      if (libraries != null)
        'libraries':
            libraries?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
      if (comments != null)
        'comments': comments?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static BookInclude include({
    _i2.EspisodeIncludeList? espisodes,
    _i2.CategoryInclude? category,
    _i2.LibraryIncludeList? libraries,
    _i2.CommentIncludeList? comments,
  }) {
    return BookInclude._(
      espisodes: espisodes,
      category: category,
      libraries: libraries,
      comments: comments,
    );
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

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _BookImpl extends Book {
  _BookImpl({
    int? id,
    required String title,
    required String description,
    required List<String> cover,
    required String color,
    required String publisher,
    List<_i2.Espisode>? espisodes,
    required int categoryId,
    _i2.Category? category,
    List<_i2.Library>? libraries,
    List<_i2.Comment>? comments,
  }) : super._(
          id: id,
          title: title,
          description: description,
          cover: cover,
          color: color,
          publisher: publisher,
          espisodes: espisodes,
          categoryId: categoryId,
          category: category,
          libraries: libraries,
          comments: comments,
        );

  @override
  Book copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    List<String>? cover,
    String? color,
    String? publisher,
    Object? espisodes = _Undefined,
    int? categoryId,
    Object? category = _Undefined,
    Object? libraries = _Undefined,
    Object? comments = _Undefined,
  }) {
    return Book(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      cover: cover ?? this.cover.clone(),
      color: color ?? this.color,
      publisher: publisher ?? this.publisher,
      espisodes: espisodes is List<_i2.Espisode>?
          ? espisodes
          : this.espisodes?.clone(),
      categoryId: categoryId ?? this.categoryId,
      category:
          category is _i2.Category? ? category : this.category?.copyWith(),
      libraries:
          libraries is List<_i2.Library>? ? libraries : this.libraries?.clone(),
      comments:
          comments is List<_i2.Comment>? ? comments : this.comments?.clone(),
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
    cover = _i1.ColumnSerializable(
      'cover',
      this,
    );
    color = _i1.ColumnString(
      'color',
      this,
    );
    publisher = _i1.ColumnString(
      'publisher',
      this,
    );
    categoryId = _i1.ColumnInt(
      'categoryId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnSerializable cover;

  late final _i1.ColumnString color;

  late final _i1.ColumnString publisher;

  _i2.EspisodeTable? ___espisodes;

  _i1.ManyRelation<_i2.EspisodeTable>? _espisodes;

  late final _i1.ColumnInt categoryId;

  _i2.CategoryTable? _category;

  _i2.LibraryTable? ___libraries;

  _i1.ManyRelation<_i2.LibraryTable>? _libraries;

  _i2.CommentTable? ___comments;

  _i1.ManyRelation<_i2.CommentTable>? _comments;

  _i2.EspisodeTable get __espisodes {
    if (___espisodes != null) return ___espisodes!;
    ___espisodes = _i1.createRelationTable(
      relationFieldName: '__espisodes',
      field: Book.t.id,
      foreignField: _i2.Espisode.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.EspisodeTable(tableRelation: foreignTableRelation),
    );
    return ___espisodes!;
  }

  _i2.CategoryTable get category {
    if (_category != null) return _category!;
    _category = _i1.createRelationTable(
      relationFieldName: 'category',
      field: Book.t.categoryId,
      foreignField: _i2.Category.t.id,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CategoryTable(tableRelation: foreignTableRelation),
    );
    return _category!;
  }

  _i2.LibraryTable get __libraries {
    if (___libraries != null) return ___libraries!;
    ___libraries = _i1.createRelationTable(
      relationFieldName: '__libraries',
      field: Book.t.id,
      foreignField: _i2.Library.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.LibraryTable(tableRelation: foreignTableRelation),
    );
    return ___libraries!;
  }

  _i2.CommentTable get __comments {
    if (___comments != null) return ___comments!;
    ___comments = _i1.createRelationTable(
      relationFieldName: '__comments',
      field: Book.t.id,
      foreignField: _i2.Comment.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CommentTable(tableRelation: foreignTableRelation),
    );
    return ___comments!;
  }

  _i1.ManyRelation<_i2.EspisodeTable> get espisodes {
    if (_espisodes != null) return _espisodes!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'espisodes',
      field: Book.t.id,
      foreignField: _i2.Espisode.t.bookId,
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

  _i1.ManyRelation<_i2.LibraryTable> get libraries {
    if (_libraries != null) return _libraries!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'libraries',
      field: Book.t.id,
      foreignField: _i2.Library.t.bookId,
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

  _i1.ManyRelation<_i2.CommentTable> get comments {
    if (_comments != null) return _comments!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'comments',
      field: Book.t.id,
      foreignField: _i2.Comment.t.bookId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.CommentTable(tableRelation: foreignTableRelation),
    );
    _comments = _i1.ManyRelation<_i2.CommentTable>(
      tableWithRelations: relationTable,
      table: _i2.CommentTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _comments!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        description,
        cover,
        color,
        publisher,
        categoryId,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'espisodes') {
      return __espisodes;
    }
    if (relationField == 'category') {
      return category;
    }
    if (relationField == 'libraries') {
      return __libraries;
    }
    if (relationField == 'comments') {
      return __comments;
    }
    return null;
  }
}

class BookInclude extends _i1.IncludeObject {
  BookInclude._({
    _i2.EspisodeIncludeList? espisodes,
    _i2.CategoryInclude? category,
    _i2.LibraryIncludeList? libraries,
    _i2.CommentIncludeList? comments,
  }) {
    _espisodes = espisodes;
    _category = category;
    _libraries = libraries;
    _comments = comments;
  }

  _i2.EspisodeIncludeList? _espisodes;

  _i2.CategoryInclude? _category;

  _i2.LibraryIncludeList? _libraries;

  _i2.CommentIncludeList? _comments;

  @override
  Map<String, _i1.Include?> get includes => {
        'espisodes': _espisodes,
        'category': _category,
        'libraries': _libraries,
        'comments': _comments,
      };

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
    return session.db.find<Book>(
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
    return session.db.findFirstRow<Book>(
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
    return session.db.findById<Book>(
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
    return session.db.insert<Book>(
      rows,
      transaction: transaction,
    );
  }

  Future<Book> insertRow(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Book>(
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
    return session.db.update<Book>(
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
    return session.db.updateRow<Book>(
      row,
      columns: columns?.call(Book.t),
      transaction: transaction,
    );
  }

  Future<List<Book>> delete(
    _i1.Session session,
    List<Book> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Book>(
      rows,
      transaction: transaction,
    );
  }

  Future<Book> deleteRow(
    _i1.Session session,
    Book row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Book>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Book>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<BookTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Book>(
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
    return session.db.count<Book>(
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

    var $espisode = espisode.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.db.update<_i2.Espisode>(
      $espisode,
      columns: [_i2.Espisode.t.bookId],
    );
  }

  Future<void> libraries(
    _i1.Session session,
    Book book,
    List<_i2.Library> library,
  ) async {
    if (library.any((e) => e.id == null)) {
      throw ArgumentError.notNull('library.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $library = library.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.db.update<_i2.Library>(
      $library,
      columns: [_i2.Library.t.bookId],
    );
  }

  Future<void> comments(
    _i1.Session session,
    Book book,
    List<_i2.Comment> comment,
  ) async {
    if (comment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('comment.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $comment = comment.map((e) => e.copyWith(bookId: book.id)).toList();
    await session.db.update<_i2.Comment>(
      $comment,
      columns: [_i2.Comment.t.bookId],
    );
  }
}

class BookAttachRowRepository {
  const BookAttachRowRepository._();

  Future<void> category(
    _i1.Session session,
    Book book,
    _i2.Category category,
  ) async {
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }
    if (category.id == null) {
      throw ArgumentError.notNull('category.id');
    }

    var $book = book.copyWith(categoryId: category.id);
    await session.db.updateRow<Book>(
      $book,
      columns: [Book.t.categoryId],
    );
  }

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

    var $espisode = espisode.copyWith(bookId: book.id);
    await session.db.updateRow<_i2.Espisode>(
      $espisode,
      columns: [_i2.Espisode.t.bookId],
    );
  }

  Future<void> libraries(
    _i1.Session session,
    Book book,
    _i2.Library library,
  ) async {
    if (library.id == null) {
      throw ArgumentError.notNull('library.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $library = library.copyWith(bookId: book.id);
    await session.db.updateRow<_i2.Library>(
      $library,
      columns: [_i2.Library.t.bookId],
    );
  }

  Future<void> comments(
    _i1.Session session,
    Book book,
    _i2.Comment comment,
  ) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }

    var $comment = comment.copyWith(bookId: book.id);
    await session.db.updateRow<_i2.Comment>(
      $comment,
      columns: [_i2.Comment.t.bookId],
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

    var $espisode = espisode.map((e) => e.copyWith(bookId: null)).toList();
    await session.db.update<_i2.Espisode>(
      $espisode,
      columns: [_i2.Espisode.t.bookId],
    );
  }

  Future<void> libraries(
    _i1.Session session,
    List<_i2.Library> library,
  ) async {
    if (library.any((e) => e.id == null)) {
      throw ArgumentError.notNull('library.id');
    }

    var $library = library.map((e) => e.copyWith(bookId: null)).toList();
    await session.db.update<_i2.Library>(
      $library,
      columns: [_i2.Library.t.bookId],
    );
  }

  Future<void> comments(
    _i1.Session session,
    List<_i2.Comment> comment,
  ) async {
    if (comment.any((e) => e.id == null)) {
      throw ArgumentError.notNull('comment.id');
    }

    var $comment = comment.map((e) => e.copyWith(bookId: null)).toList();
    await session.db.update<_i2.Comment>(
      $comment,
      columns: [_i2.Comment.t.bookId],
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

    var $espisode = espisode.copyWith(bookId: null);
    await session.db.updateRow<_i2.Espisode>(
      $espisode,
      columns: [_i2.Espisode.t.bookId],
    );
  }

  Future<void> libraries(
    _i1.Session session,
    _i2.Library library,
  ) async {
    if (library.id == null) {
      throw ArgumentError.notNull('library.id');
    }

    var $library = library.copyWith(bookId: null);
    await session.db.updateRow<_i2.Library>(
      $library,
      columns: [_i2.Library.t.bookId],
    );
  }

  Future<void> comments(
    _i1.Session session,
    _i2.Comment comment,
  ) async {
    if (comment.id == null) {
      throw ArgumentError.notNull('comment.id');
    }

    var $comment = comment.copyWith(bookId: null);
    await session.db.updateRow<_i2.Comment>(
      $comment,
      columns: [_i2.Comment.t.bookId],
    );
  }
}
