/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports
// ignore_for_file: use_super_parameters
// ignore_for_file: type_literal_in_constant_pattern

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/book_endpoint.dart' as _i2;
import '../endpoints/category_endpoint.dart' as _i3;
import '../endpoints/comment_endpoint.dart' as _i4;
import '../endpoints/example_endpoint.dart' as _i5;
import '../endpoints/library_endpoint.dart' as _i6;
import 'package:webtoon_server/src/generated/comment.dart' as _i7;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i8;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'book': _i2.BookEndpoint()
        ..initialize(
          server,
          'book',
          null,
        ),
      'category': _i3.CategoryEndpoint()
        ..initialize(
          server,
          'category',
          null,
        ),
      'comment': _i4.CommentEndpoint()
        ..initialize(
          server,
          'comment',
          null,
        ),
      'example': _i5.ExampleEndpoint()
        ..initialize(
          server,
          'example',
          null,
        ),
      'library': _i6.LibraryEndpoint()
        ..initialize(
          server,
          'library',
          null,
        ),
    };
    connectors['book'] = _i1.EndpointConnector(
      name: 'book',
      endpoint: endpoints['book']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['book'] as _i2.BookEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'getBooks': _i1.MethodConnector(
          name: 'getBooks',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['book'] as _i2.BookEndpoint).getBooks(session),
        ),
        'getBooksFromCategory': _i1.MethodConnector(
          name: 'getBooksFromCategory',
          params: {
            'categoryId': _i1.ParameterDescription(
              name: 'categoryId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['book'] as _i2.BookEndpoint).getBooksFromCategory(
            session,
            params['categoryId'],
          ),
        ),
      },
    );
    connectors['category'] = _i1.EndpointConnector(
      name: 'category',
      endpoint: endpoints['category']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['category'] as _i3.CategoryEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'getCategories': _i1.MethodConnector(
          name: 'getCategories',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['category'] as _i3.CategoryEndpoint)
                  .getCategories(session),
        ),
      },
    );
    connectors['comment'] = _i1.EndpointConnector(
      name: 'comment',
      endpoint: endpoints['comment']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i4.CommentEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'getComments': _i1.MethodConnector(
          name: 'getComments',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i4.CommentEndpoint)
                  .getComments(session),
        ),
        'createComment': _i1.MethodConnector(
          name: 'createComment',
          params: {
            'comment': _i1.ParameterDescription(
              name: 'comment',
              type: _i1.getType<_i7.Comment>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['comment'] as _i4.CommentEndpoint).createComment(
            session,
            params['comment'],
          ),
        ),
      },
    );
    connectors['example'] = _i1.EndpointConnector(
      name: 'example',
      endpoint: endpoints['example']!,
      methodConnectors: {
        'hello': _i1.MethodConnector(
          name: 'hello',
          params: {
            'name': _i1.ParameterDescription(
              name: 'name',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i5.ExampleEndpoint).hello(
            session,
            params['name'],
          ),
        ),
        'addSampleData': _i1.MethodConnector(
          name: 'addSampleData',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['example'] as _i5.ExampleEndpoint)
                  .addSampleData(session),
        ),
      },
    );
    connectors['library'] = _i1.EndpointConnector(
      name: 'library',
      endpoint: endpoints['library']!,
      methodConnectors: {
        'getUserLibrary': _i1.MethodConnector(
          name: 'getUserLibrary',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['library'] as _i6.LibraryEndpoint).getUserLibrary(
            session,
            params['userId'],
          ),
        )
      },
    );
    modules['serverpod_auth'] = _i8.Endpoints()..initializeEndpoints(server);
  }
}
