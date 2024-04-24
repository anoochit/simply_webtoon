/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class Espisode extends _i1.SerializableEntity {
  Espisode._({
    this.id,
    required this.title,
    required this.image,
  });

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

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String image;

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
