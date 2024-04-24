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

abstract class Book extends _i1.SerializableEntity {
  Book._({
    this.id,
    required this.title,
    required this.description,
    this.espisodes,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String description;

  List<_i2.Espisode>? espisodes;

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
