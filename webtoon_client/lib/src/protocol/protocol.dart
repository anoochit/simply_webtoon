/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

library protocol; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'book.dart' as _i2;
import 'category.dart' as _i3;
import 'comment.dart' as _i4;
import 'espisode.dart' as _i5;
import 'example.dart' as _i6;
import 'library.dart' as _i7;
import 'protocol.dart' as _i8;
import 'package:webtoon_client/src/protocol/book.dart' as _i9;
import 'package:webtoon_client/src/protocol/category.dart' as _i10;
import 'package:webtoon_client/src/protocol/comment.dart' as _i11;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i12;
export 'book.dart';
export 'category.dart';
export 'comment.dart';
export 'espisode.dart';
export 'example.dart';
export 'library.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Map<Type, _i1.constructor> customConstructors = {};

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (customConstructors.containsKey(t)) {
      return customConstructors[t]!(data, this) as T;
    }
    if (t == _i2.Book) {
      return _i2.Book.fromJson(data, this) as T;
    }
    if (t == _i3.Category) {
      return _i3.Category.fromJson(data, this) as T;
    }
    if (t == _i4.Comment) {
      return _i4.Comment.fromJson(data, this) as T;
    }
    if (t == _i5.Espisode) {
      return _i5.Espisode.fromJson(data, this) as T;
    }
    if (t == _i6.Example) {
      return _i6.Example.fromJson(data, this) as T;
    }
    if (t == _i7.Library) {
      return _i7.Library.fromJson(data, this) as T;
    }
    if (t == _i1.getType<_i2.Book?>()) {
      return (data != null ? _i2.Book.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i3.Category?>()) {
      return (data != null ? _i3.Category.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i4.Comment?>()) {
      return (data != null ? _i4.Comment.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i5.Espisode?>()) {
      return (data != null ? _i5.Espisode.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i6.Example?>()) {
      return (data != null ? _i6.Example.fromJson(data, this) : null) as T;
    }
    if (t == _i1.getType<_i7.Library?>()) {
      return (data != null ? _i7.Library.fromJson(data, this) : null) as T;
    }
    if (t == List<String>) {
      return (data as List).map((e) => deserialize<String>(e)).toList()
          as dynamic;
    }
    if (t == _i1.getType<List<_i8.Espisode>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Espisode>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Library>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Library>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Comment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Comment>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Book>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Book>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Comment>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Comment>(e)).toList()
          : null) as dynamic;
    }
    if (t == _i1.getType<List<_i8.Library>?>()) {
      return (data != null
          ? (data as List).map((e) => deserialize<_i8.Library>(e)).toList()
          : null) as dynamic;
    }
    if (t == List<_i9.Book>) {
      return (data as List).map((e) => deserialize<_i9.Book>(e)).toList()
          as dynamic;
    }
    if (t == List<_i10.Category>) {
      return (data as List).map((e) => deserialize<_i10.Category>(e)).toList()
          as dynamic;
    }
    if (t == List<_i11.Comment>) {
      return (data as List).map((e) => deserialize<_i11.Comment>(e)).toList()
          as dynamic;
    }
    try {
      return _i12.Protocol().deserialize<T>(data, t);
    } catch (_) {}
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object data) {
    String? className;
    className = _i12.Protocol().getClassNameForObject(data);
    if (className != null) {
      return 'serverpod_auth.$className';
    }
    if (data is _i2.Book) {
      return 'Book';
    }
    if (data is _i3.Category) {
      return 'Category';
    }
    if (data is _i4.Comment) {
      return 'Comment';
    }
    if (data is _i5.Espisode) {
      return 'Espisode';
    }
    if (data is _i6.Example) {
      return 'Example';
    }
    if (data is _i7.Library) {
      return 'Library';
    }
    return super.getClassNameForObject(data);
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    if (data['className'].startsWith('serverpod_auth.')) {
      data['className'] = data['className'].substring(15);
      return _i12.Protocol().deserializeByClassName(data);
    }
    if (data['className'] == 'Book') {
      return deserialize<_i2.Book>(data['data']);
    }
    if (data['className'] == 'Category') {
      return deserialize<_i3.Category>(data['data']);
    }
    if (data['className'] == 'Comment') {
      return deserialize<_i4.Comment>(data['data']);
    }
    if (data['className'] == 'Espisode') {
      return deserialize<_i5.Espisode>(data['data']);
    }
    if (data['className'] == 'Example') {
      return deserialize<_i6.Example>(data['data']);
    }
    if (data['className'] == 'Library') {
      return deserialize<_i7.Library>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
