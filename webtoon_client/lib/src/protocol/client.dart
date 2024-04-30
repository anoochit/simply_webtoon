/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'dart:async' as _i2;
import 'package:webtoon_client/src/protocol/book.dart' as _i3;
import 'package:webtoon_client/src/protocol/category.dart' as _i4;
import 'package:webtoon_client/src/protocol/comment.dart' as _i5;
import 'package:webtoon_client/src/protocol/library.dart' as _i6;
import 'package:serverpod_auth_client/serverpod_auth_client.dart' as _i7;
import 'protocol.dart' as _i8;

/// {@category Endpoint}
class EndpointBook extends _i1.EndpointRef {
  EndpointBook(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'book';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'book',
        'hello',
        {'name': name},
      );

  _i2.Future<List<_i3.Book>> getBooks() =>
      caller.callServerEndpoint<List<_i3.Book>>(
        'book',
        'getBooks',
        {},
      );

  _i2.Future<List<_i3.Book>> getBooksFromCategory(int categoryId) =>
      caller.callServerEndpoint<List<_i3.Book>>(
        'book',
        'getBooksFromCategory',
        {'categoryId': categoryId},
      );
}

/// {@category Endpoint}
class EndpointCategory extends _i1.EndpointRef {
  EndpointCategory(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'category';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'category',
        'hello',
        {'name': name},
      );

  _i2.Future<List<_i4.Category>> getCategories() =>
      caller.callServerEndpoint<List<_i4.Category>>(
        'category',
        'getCategories',
        {},
      );
}

/// {@category Endpoint}
class EndpointComment extends _i1.EndpointRef {
  EndpointComment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'comment';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'comment',
        'hello',
        {'name': name},
      );

  _i2.Future<List<_i5.Comment>> getComments() =>
      caller.callServerEndpoint<List<_i5.Comment>>(
        'comment',
        'getComments',
        {},
      );

  _i2.Future<_i5.Comment> createComment(_i5.Comment comment) =>
      caller.callServerEndpoint<_i5.Comment>(
        'comment',
        'createComment',
        {'comment': comment},
      );
}

/// {@category Endpoint}
class EndpointExample extends _i1.EndpointRef {
  EndpointExample(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'example';

  _i2.Future<String> hello(String name) => caller.callServerEndpoint<String>(
        'example',
        'hello',
        {'name': name},
      );
}

/// {@category Endpoint}
class EndpointLibrary extends _i1.EndpointRef {
  EndpointLibrary(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'library';

  _i2.Future<_i6.Library?> getUserLibrary(int userId) =>
      caller.callServerEndpoint<_i6.Library?>(
        'library',
        'getUserLibrary',
        {'userId': userId},
      );
}

class _Modules {
  _Modules(Client client) {
    auth = _i7.Caller(client);
  }

  late final _i7.Caller auth;
}

class Client extends _i1.ServerpodClient {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
  }) : super(
          host,
          _i8.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
        ) {
    book = EndpointBook(this);
    category = EndpointCategory(this);
    comment = EndpointComment(this);
    example = EndpointExample(this);
    library = EndpointLibrary(this);
    modules = _Modules(this);
  }

  late final EndpointBook book;

  late final EndpointCategory category;

  late final EndpointComment comment;

  late final EndpointExample example;

  late final EndpointLibrary library;

  late final _Modules modules;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'book': book,
        'category': category,
        'comment': comment,
        'example': example,
        'library': library,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup =>
      {'auth': modules.auth};
}
