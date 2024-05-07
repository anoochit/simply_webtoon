import 'package:serverpod/serverpod.dart';
import 'package:webtoon_server/src/generated/protocol.dart';

// This is an example endpoint of your server. It's best practice to use the
// `Endpoint` ending of the class name, but it will be removed when accessing
// the endpoint from the client. I.e., this endpoint can be accessed through
// `client.example` on the client side.

// After adding or modifying an endpoint, you will need to run
// `serverpod generate` to update the server and client code.
class ExampleEndpoint extends Endpoint {
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

  Future<bool> addSampleData(Session session) async {
    String sampleBackground = "books/sample_background.webp";
    String sampleCover = "books/sample_cover.webp";
    String sampleItem = "books/sample_item.webp";
    String sampleLabel = "books/sample_label.webp";

    // add data
    for (int i = 0; i < 6; i++) {
      // add category
      await Category.db
          .insertRow(
        session,
        Category(
          title: 'Category${i + 1}',
        ),
      )
          .then((category) async {
        final catId = category.id;
        for (int b = 0; b < 20; b++) {
          // add book
          await Book.db
              .insertRow(
            session,
            Book(
              title: 'Book${b + 1}',
              description: 'description',
              publisher: 'publisher name',
              color: '0xFF1F1051',
              cover: [
                sampleBackground,
                sampleCover,
                sampleItem,
                sampleLabel,
              ],
              categoryId: catId!,
            ),
          )
              .then((book) async {
            // add espidode
            for (int e = 0; e < 20; e++) {
              await Espisode.db.insertRow(
                session,
                Espisode(
                  title: 'EP${e + 1}',
                  cover: [
                    sampleBackground,
                    sampleCover,
                    sampleLabel,
                  ],
                  image: [
                    sampleBackground,
                    sampleBackground,
                    sampleBackground,
                    sampleBackground,
                    sampleBackground,
                  ],
                  bookId: book.id!,
                ),
              );
            }
          });
        }
      });
    }

    return true;
  }
}
