import 'package:noor/app/message_module/message_bindings.dart';
import 'package:noor/app/message_module/message_view.dart';
import 'package:noor/core/contracts/page.dart';
import 'package:noor/routes/routes.dart';

// ignore: must_be_immutable
class  MessagePage extends Page {
  MessagePage()
      : super(
            name: Routes.messagePage,
            view:  MessageView(),
            binding:  MessageBinding(),
            middlewares: []);
}
