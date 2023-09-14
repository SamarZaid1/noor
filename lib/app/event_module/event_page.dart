
import 'package:noor/app/event_module/event_bindings.dart';
import 'package:noor/app/event_module/event_view.dart';
import 'package:noor/core/contracts/page.dart';
import 'package:noor/app/splash_module/splalsh_bindings.dart';
import 'package:noor/app/splash_module/splash_view.dart';
import 'package:noor/routes/routes.dart';

// ignore: must_be_immutable
class EventPage extends Page {
  EventPage()
      : super(
            name: Routes.eventPage,
            view: EventView(),
            binding: EventBinding(),
            middlewares: []);
}
