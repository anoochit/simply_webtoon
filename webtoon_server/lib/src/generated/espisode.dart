/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class Espisode extends _i1.TableRow {
  Espisode._({
    int? id,
    required this.title,
    required this.image,
  }) : super(id);

  factory Espisode({
    int? id,
    required String title,
    required String image,
  }) = _EspisodeImpl;

  factory Espisode.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Espisode(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      image:
          serializationManager.deserialize<String>(jsonSerialization['image']),
    );
  }

  static final t = EspisodeTable();

  static const db = EspisodeRepository._();

  String title;

  String image;

  int? _bookEspisodesBookId;

  @override
  _i1.Table get table => t;

  Espisode copyWith({
    int? id,
    String? title,
    String? image,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'image': image,
    };
  }

  @override
  @Deprecated('Will be removed in 2.0.0')
  Map<String, dynamic> toJsonForDatabase() {
    return {
      'id': id,
      'title': title,
      'image': image,
      '_bookEspisodesBookId': _bookEspisodesBookId,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'image': image,
      if (_bookEspisodesBookId != null)
        '_bookEspisodesBookId': _bookEspisodesBookId,
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
      case 'image':
        image = value;
        return;
      case '_bookEspisodesBookId':
        _bookEspisodesBookId = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.find instead.')
  static Future<List<Espisode>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    int? limit,
    int? offset,
    _i1.Column? orderBy,
    List<_i1.Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Espisode>(
      where: where != null ? where(Espisode.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findRow instead.')
  static Future<Espisode?> findSingleRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    int? offset,
    _i1.Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findSingleRow<Espisode>(
      where: where != null ? where(Espisode.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.findById instead.')
  static Future<Espisode?> findById(
    _i1.Session session,
    int id,
  ) async {
    return session.db.findById<Espisode>(id);
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteWhere instead.')
  static Future<int> delete(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EspisodeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Espisode>(
      where: where(Espisode.t),
      transaction: transaction,
    );
  }

  @Deprecated('Will be removed in 2.0.0. Use: db.deleteRow instead.')
  static Future<bool> deleteRow(
    _i1.Session session,
    Espisode row, {
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
    Espisode row, {
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
    Espisode row, {
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
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    int? limit,
    bool useCache = true,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Espisode>(
      where: where != null ? where(Espisode.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static EspisodeInclude include() {
    return EspisodeInclude._();
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
    required String image,
  }) : super._(
          id: id,
          title: title,
          image: image,
        );

  @override
  Espisode copyWith({
    Object? id = _Undefined,
    String? title,
    String? image,
  }) {
    return Espisode(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      image: image ?? this.image,
    );
  }
}

class EspisodeImplicit extends _EspisodeImpl {
  EspisodeImplicit._({
    int? id,
    required String title,
    required String image,
    this.$_bookEspisodesBookId,
  }) : super(
          id: id,
          title: title,
          image: image,
        );

  factory EspisodeImplicit(
    Espisode espisode, {
    int? $_bookEspisodesBookId,
  }) {
    return EspisodeImplicit._(
      id: espisode.id,
      title: espisode.title,
      image: espisode.image,
      $_bookEspisodesBookId: $_bookEspisodesBookId,
    );
  }

  int? $_bookEspisodesBookId;

  @override
  Map<String, dynamic> allToJson() {
    var jsonMap = super.allToJson();
    jsonMap.addAll({'_bookEspisodesBookId': $_bookEspisodesBookId});
    return jsonMap;
  }
}

class EspisodeTable extends _i1.Table {
  EspisodeTable({super.tableRelation}) : super(tableName: 'espisode') {
    title = _i1.ColumnString(
      'title',
      this,
    );
    image = _i1.ColumnString(
      'image',
      this,
    );
    $_bookEspisodesBookId = _i1.ColumnInt(
      '_bookEspisodesBookId',
      this,
    );
  }

  late final _i1.ColumnString title;

  late final _i1.ColumnString image;

  late final _i1.ColumnInt $_bookEspisodesBookId;

  @override
  List<_i1.Column> get columns => [
        id,
        title,
        image,
        $_bookEspisodesBookId,
      ];
}

@Deprecated('Use EspisodeTable.t instead.')
EspisodeTable tEspisode = EspisodeTable();

class EspisodeInclude extends _i1.IncludeObject {
  EspisodeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

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

  Future<List<Espisode>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<EspisodeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<EspisodeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<EspisodeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.find<Espisode>(
      where: where?.call(Espisode.t),
      orderBy: orderBy?.call(Espisode.t),
      orderByList: orderByList?.call(Espisode.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
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
  }) async {
    return session.dbNext.findFirstRow<Espisode>(
      where: where?.call(Espisode.t),
      orderBy: orderBy?.call(Espisode.t),
      orderByList: orderByList?.call(Espisode.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  Future<Espisode?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.findById<Espisode>(
      id,
      transaction: transaction,
    );
  }

  Future<List<Espisode>> insert(
    _i1.Session session,
    List<Espisode> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insert<Espisode>(
      rows,
      transaction: transaction,
    );
  }

  Future<Espisode> insertRow(
    _i1.Session session,
    Espisode row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.insertRow<Espisode>(
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
    return session.dbNext.update<Espisode>(
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
    return session.dbNext.updateRow<Espisode>(
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
    return session.dbNext.delete<Espisode>(
      rows,
      transaction: transaction,
    );
  }

  Future<int> deleteRow(
    _i1.Session session,
    Espisode row, {
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteRow<Espisode>(
      row,
      transaction: transaction,
    );
  }

  Future<List<int>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<EspisodeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.dbNext.deleteWhere<Espisode>(
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
    return session.dbNext.count<Espisode>(
      where: where?.call(Espisode.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
