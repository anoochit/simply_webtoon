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

abstract class Category extends _i1.TableRow
    implements _i1.ProtocolSerialization {
  Category._({
    int? id,
    required this.title,
    this.books,
  }) : super(id);

  factory Category({
    int? id,
    required String title,
    List<_i2.Book>? books,
  }) = _CategoryImpl;

  factory Category.fromJson(Map<String, dynamic> jsonSerialization) {
    return Category(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      books: (jsonSerialization['books'] as List?)
          ?.map((e) => _i2.Book.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  static final t = CategoryTable();

  static const db = CategoryRepository._();

  String title;

  List<_i2.Book>? books;

  @override
  _i1.Table get table => t;

  Category copyWith({
    int? id,
    String? title,
    List<_i2.Book>? books,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      if (books != null) 'books': books?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'title': title,
      if (books != null)
        'books': books?.toJson(valueToJson: (v) => v.toJsonForProtocol()),
    };
  }

  static CategoryInclude include({_i2.BookIncludeList? books}) {
    return CategoryInclude._(books: books);
  }

  static CategoryIncludeList includeList({
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoryTable>? orderByList,
    CategoryInclude? include,
  }) {
    return CategoryIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Category.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Category.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _CategoryImpl extends Category {
  _CategoryImpl({
    int? id,
    required String title,
    List<_i2.Book>? books,
  }) : super._(
          id: id,
          title: title,
          books: books,
        );

  @override
  Category copyWith({
    Object? id = _Undefined,
    String? title,
    Object? books = _Undefined,
  }) {
    return Category(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      books: books is List<_i2.Book>? ? books : this.books?.clone(),
    );
  }
}

class CategoryTable extends _i1.Table {
  CategoryTable({super.tableRelation}) : super(tableName: 'category') {
    title = _i1.ColumnString(
      'title',
      this,
    );
  }

  late final _i1.ColumnString title;

  _i2.BookTable? ___books;

  _i1.ManyRelation<_i2.BookTable>? _books;

  _i2.BookTable get __books {
    if (___books != null) return ___books!;
    ___books = _i1.createRelationTable(
      relationFieldName: '__books',
      field: Category.t.id,
      foreignField: _i2.Book.t.categoryId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookTable(tableRelation: foreignTableRelation),
    );
    return ___books!;
  }

  _i1.ManyRelation<_i2.BookTable> get books {
    if (_books != null) return _books!;
    var relationTable = _i1.createRelationTable(
      relationFieldName: 'books',
      field: Category.t.id,
      foreignField: _i2.Book.t.categoryId,
      tableRelation: tableRelation,
      createTable: (foreignTableRelation) =>
          _i2.BookTable(tableRelation: foreignTableRelation),
    );
    _books = _i1.ManyRelation<_i2.BookTable>(
      tableWithRelations: relationTable,
      table: _i2.BookTable(
          tableRelation: relationTable.tableRelation!.lastRelation),
    );
    return _books!;
  }

  @override
  List<_i1.Column> get columns => [
        id,
        title,
      ];

  @override
  _i1.Table? getRelationTable(String relationField) {
    if (relationField == 'books') {
      return __books;
    }
    return null;
  }
}

class CategoryInclude extends _i1.IncludeObject {
  CategoryInclude._({_i2.BookIncludeList? books}) {
    _books = books;
  }

  _i2.BookIncludeList? _books;

  @override
  Map<String, _i1.Include?> get includes => {'books': _books};

  @override
  _i1.Table get table => Category.t;
}

class CategoryIncludeList extends _i1.IncludeList {
  CategoryIncludeList._({
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Category.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table get table => Category.t;
}

class CategoryRepository {
  const CategoryRepository._();

  final attach = const CategoryAttachRepository._();

  final attachRow = const CategoryAttachRowRepository._();

  Future<List<Category>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<CategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoryTable>? orderByList,
    _i1.Transaction? transaction,
    CategoryInclude? include,
  }) async {
    return session.db.find<Category>(
      where: where?.call(Category.t),
      orderBy: orderBy?.call(Category.t),
      orderByList: orderByList?.call(Category.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Category?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    int? offset,
    _i1.OrderByBuilder<CategoryTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<CategoryTable>? orderByList,
    _i1.Transaction? transaction,
    CategoryInclude? include,
  }) async {
    return session.db.findFirstRow<Category>(
      where: where?.call(Category.t),
      orderBy: orderBy?.call(Category.t),
      orderByList: orderByList?.call(Category.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
      include: include,
    );
  }

  Future<Category?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
    CategoryInclude? include,
  }) async {
    return session.db.findById<Category>(
      id,
      transaction: transaction,
      include: include,
    );
  }

  Future<List<Category>> insert(
    _i1.Session session,
    List<Category> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Category>(
      rows,
      transaction: transaction,
    );
  }

  Future<Category> insertRow(
    _i1.Session session,
    Category row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Category>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Category>> update(
    _i1.Session session,
    List<Category> rows, {
    _i1.ColumnSelections<CategoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Category>(
      rows,
      columns: columns?.call(Category.t),
      transaction: transaction,
    );
  }

  Future<Category> updateRow(
    _i1.Session session,
    Category row, {
    _i1.ColumnSelections<CategoryTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Category>(
      row,
      columns: columns?.call(Category.t),
      transaction: transaction,
    );
  }

  Future<List<Category>> delete(
    _i1.Session session,
    List<Category> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Category>(
      rows,
      transaction: transaction,
    );
  }

  Future<Category> deleteRow(
    _i1.Session session,
    Category row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Category>(
      row,
      transaction: transaction,
    );
  }

  Future<List<Category>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<CategoryTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Category>(
      where: where(Category.t),
      transaction: transaction,
    );
  }

  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<CategoryTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Category>(
      where: where?.call(Category.t),
      limit: limit,
      transaction: transaction,
    );
  }
}

class CategoryAttachRepository {
  const CategoryAttachRepository._();

  Future<void> books(
    _i1.Session session,
    Category category,
    List<_i2.Book> book,
  ) async {
    if (book.any((e) => e.id == null)) {
      throw ArgumentError.notNull('book.id');
    }
    if (category.id == null) {
      throw ArgumentError.notNull('category.id');
    }

    var $book = book.map((e) => e.copyWith(categoryId: category.id)).toList();
    await session.db.update<_i2.Book>(
      $book,
      columns: [_i2.Book.t.categoryId],
    );
  }
}

class CategoryAttachRowRepository {
  const CategoryAttachRowRepository._();

  Future<void> books(
    _i1.Session session,
    Category category,
    _i2.Book book,
  ) async {
    if (book.id == null) {
      throw ArgumentError.notNull('book.id');
    }
    if (category.id == null) {
      throw ArgumentError.notNull('category.id');
    }

    var $book = book.copyWith(categoryId: category.id);
    await session.db.updateRow<_i2.Book>(
      $book,
      columns: [_i2.Book.t.categoryId],
    );
  }
}
