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

abstract class Book implements _i1.SerializableModel {
  Book._({
    this.id,
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
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

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
