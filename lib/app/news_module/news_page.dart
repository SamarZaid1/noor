import 'package:noor/app/message_module/message_bindings.dart';
import 'package:noor/app/message_module/message_view.dart';
import 'package:noor/app/news_module/news_view.dart';
import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';

import 'news_bindings.dart';

// ignore: must_be_immutable
class  NewsPage extends Page {
  NewsPage()
      : super(
            name: Routes.newsPage,
            view:  NewsView(),
            binding:  NewsBinding(),
            middlewares: []);
}
