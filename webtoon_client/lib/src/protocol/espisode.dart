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

abstract class Espisode implements _i1.SerializableModel {
  Espisode._({
    this.id,
    required this.title,
    required this.cover,
    required this.image,
    required this.bookId,
    this.book,
    this.libraries,
  });

  factory Espisode({
    int? id,
    required String title,
    required List<String> cover,
    required List<String> image,
    required int bookId,
    _i2.Book? book,
    List<_i2.Library>? libraries,
  }) = _EspisodeImpl;

  factory Espisode.fromJson(Map<String, dynamic> jsonSerialization) {
    return Espisode(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      cover:
          (jsonSerialization['cover'] as List).map((e) => e as String).toList(),
      image:
          (jsonSerialization['image'] as List).map((e) => e as String).toList(),
      bookId: jsonSerialization['bookId'] as int,
      book: jsonSerialization['book'] == null
          ? null
          : _i2.Book.fromJson(
              (jsonSerialization['book'] as Map<String, dynamic>)),
      libraries: (jsonSerialization['libraries'] as List?)
          ?.map((e) => _i2.Library.fromJson((e as Map<String, dynamic>)))
          .toList(),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  List<String> cover;

  List<String> image;

  int bookId;

  _i2.Book? book;

  List<_i2.Library>? libraries;

  Espisode copyWith({
    int? id,
    String? title,
    List<String>? cover,
    List<String>? image,
    int? bookId,
    _i2.Book? book,
    List<_i2.Library>? libraries,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'cover': cover.toJson(),
      'image': image.toJson(),
      'bookId': bookId,
      if (book != null) 'book': book?.toJson(),
      if (libraries != null)
        'libraries': libraries?.toJson(valueToJson: (v) => v.toJson()),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _EspisodeImpl extends Espisode {
  _EspisodeImpl({
    int? id,
    required String title,
    required List<String> cover,
    required List<String> image,
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
    List<String>? cover,
    List<String>? image,
    int? bookId,
    Object? book = _Undefined,
    Object? libraries = _Undefined,
  }) {
    return Espisode(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      cover: cover ?? this.cover.clone(),
      image: image ?? this.image.clone(),
      bookId: bookId ?? this.bookId,
      book: book is _i2.Book? ? book : this.book?.copyWith(),
      libraries:
          libraries is List<_i2.Library>? ? libraries : this.libraries?.clone(),
    );
  }
}
