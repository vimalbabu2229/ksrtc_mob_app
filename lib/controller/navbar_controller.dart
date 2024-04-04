import 'package:get/get.dart';
import 'package:ksrtc_mob_app/screens/profile_page.dart';
import 'package:ksrtc_mob_app/screens/schedules_screen.dart';

class BottomNavigationBarController extends GetxController {
  RxInt index = 0.obs;

  var pages = [
    const ScheduleScreen(),
    const ProfileScreen(),
  ];
}
