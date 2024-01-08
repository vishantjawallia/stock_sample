import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:stock_sample/config/pref_constant.dart';
import 'package:stock_sample/config/preference.dart';
import 'package:stock_sample/views/dashboard/dashboard_view.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController tokenController = TextEditingController();

  LoginViewModel() {
    loadItems();
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    tokenController.text =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJkaGFuIiwicGFydG5lcklkIjoiIiwiZXhwIjoxNzA2OTM1MzEyLCJ0b2tlbkNvbnN1bWVyVHlwZSI6IlNFTEYiLCJ3ZWJob29rVXJsIjoiIiwiZGhhbkNsaWVudElkIjoiMTAwMDQ3NTUxNCJ9.COOQ6JLTXgs9KOoIl4q0TjCa_orhPemQft_AFOQl6j9TVfAhROHVgKdAHcuIWjiHf0HOmiY0SeRtdVeo9nC-Ig";
    setBusy(true);
    //Write your models loading codes here

    //Let other views to render again
    setBusy(false);
    notifyListeners();
  }

  void sumbitHandler() async {
    await SharedPreferenceHelper.setString(Preferences.token, tokenController.text);
    await SharedPreferenceHelper.setBoolean(Preferences.isLogged, true);
    Get.to(() => DashboardView());
  }
}
