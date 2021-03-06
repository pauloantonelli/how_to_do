import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/status/status_controller.dart';
import 'package:how_to_do_bottom_navigation_bar_sem_pageview/app/modules/status/status_module.dart';

void main() {
  initModule(StatusModule());
  StatusController status;

  setUp(() {
    status = StatusModule.to.get<StatusController>();
  });

  group('StatusController Test', () {
    test("First Test", () {
      expect(status, isInstanceOf<StatusController>());
    });

    test("Set Value", () {
      expect(status.value, equals(0));
      status.increment();
      expect(status.value, equals(1));
    });
  });
}
