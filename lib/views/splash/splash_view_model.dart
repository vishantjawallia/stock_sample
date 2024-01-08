import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:stock_sample/config/pref_constant.dart';
import 'package:stock_sample/config/preference.dart';
import 'package:stock_sample/views/dashboard/dashboard_view.dart';
import 'package:stock_sample/views/login/login_view.dart';

class SplashViewModel extends BaseViewModel {
  SplashViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here
    String token = SharedPreferenceHelper.getString(Preferences.token);
    bool login = SharedPreferenceHelper.getBoolean(Preferences.isLogged);
    await Future.delayed(const Duration(seconds: 2));
    //Let other views to render again
    setBusy(false);
    notifyListeners();

    if (token.isNotEmpty && login) {
      Get.to(() => DashboardView());
    } else {
      SharedPreferenceHelper.clearPref();
      Get.to(() => const LoginView());
    }
  }
}
