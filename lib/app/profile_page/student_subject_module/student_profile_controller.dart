import 'package:noor/core/contracts/controller.dart';
import 'package:noor/services/user_contorller.dart';
import 'package:get/get.dart';

class StudentProfileController extends Contorller {
  RxString search = "".obs;
  final UserContorller userContorller = Get.put(UserContorller());
 /* RefreshController refreshController =
  new RefreshController(initialRefresh: false);
*/
  @override
  void onInit() {
    super.onInit();
    //await fetchBooksMap();
  }

  void onRefresh() async {
   // await fetchBooksMap();
   // refreshController.refreshCompleted();
  }

 /* Future fetchBooksMap() async {
    try {
      change(null, status: RxStatus.loading());
      var ruslte = await BooksApi().getBooks(userContorller.user.value.id!);
      if (ruslte == null) {
        change(booksList, status: RxStatus.empty());
      } else {
        //booksList.clear();
        //ruslte.forEach((v) {
        booksList = BooksMap.fromJson(ruslte);

        // });
        if (booksList == true) {
          change(booksList, status: RxStatus.empty());
        } else {
          booksList.books!
              .add(Books(bookId: 0, title: "", readingStatusId: 1));
          change(booksList, status: RxStatus.success());
        }
      }
    } catch (e) {
      throw e;
    }
  }
*/
  logOut() async {
    await userContorller.logut();
  }



}
