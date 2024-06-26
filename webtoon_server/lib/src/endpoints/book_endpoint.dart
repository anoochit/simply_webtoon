import 'package:serverpod/serverpod.dart';
import 'package:webtoon_server/src/generated/protocol.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class BookEndpoint extends Endpoint {
  // You create methods in your endpoint which are accessible from the client by
  // creating a public method with `Session` as its first parameter.
  // `bool`, `int`, `double`, `String`, `UuidValue`, `Duration`, `DateTime`, `ByteData`,
  // and other serializable classes, exceptions and enums from your from your `protocol` directory.
  // The methods should return a typed future; the same types as for the parameters are
  // supported. The `session` object provides access to the database, logging,
  // passwords, and information about the request being made to the server.
  Future<String> hello(Session session, String name) async {
    return 'Hello $name';
  }

  Future<List<Book>> getBooks(Session session) async {
    final books = await Book.db.find(
      session,
      include: Book.include(
        category: Category.include(),
        espisodes: Espisode.includeList(),
        comments: Comment.includeList(),
      ),
    );
    return books;
  }

  Future<List<Book>> getBooksFromCategory(
      Session session, int categoryId) async {
    final books = await Book.db.find(
      session,
      where: (book) => book.categoryId.equals(categoryId),
      include: Book.include(
        espisodes: Espisode.includeList(),
        comments: Comment.includeList(),
      ),
    );

    return books;
  }
}
