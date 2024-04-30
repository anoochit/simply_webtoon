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

abstract class Category extends _i1.SerializableEntity {
  Category._({
    this.id,
    required this.title,
    this.books,
  });

  factory Category({
    int? id,
    required String title,
    List<_i2.Book>? books,
  }) = _CategoryImpl;

  factory Category.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return Category(
      id: serializationManager.deserialize<int?>(jsonSerialization['id']),
      title:
          serializationManager.deserialize<String>(jsonSerialization['title']),
      books: serializationManager
          .deserialize<List<_i2.Book>?>(jsonSerialization['books']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  List<_i2.Book>? books;

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
