import 'package:serverpod/serverpod.dart';
import 'package:webtoon_server/src/generated/protocol.dart';
import 'package:intl/intl.dart';

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
    String samplePage1 = "books/sample_page1.webp";
    String samplePage2 = "books/sample_page2.webp";
    String samplePage3 = "books/sample_page3.webp";

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
              title: 'Solo Leveling',
              description:
                  'Ex reprehenderit mollit incididunt minim elit. Minim sit voluptate consectetur commodo in do tempor. Laborum non non pariatur pariatur cupidatat ut veniam consequat amet eiusmod mollit sunt.',
              publisher: 'incididunt minim elit',
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
              NumberFormat formatter = NumberFormat("00");
              String formattedNumber = formatter.format(e + 1);

              await Espisode.db.insertRow(
                session,
                Espisode(
                  title: 'EP${formattedNumber}',
                  cover: [
                    sampleBackground,
                    sampleCover,
                    sampleLabel,
                  ],
                  image: [
                    samplePage1,
                    samplePage2,
                    samplePage3,
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
