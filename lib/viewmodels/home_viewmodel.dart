import 'package:flutter_navigation_example/locator.dart';
import 'package:flutter_navigation_example/viewmodels/basemodel.dart';
import 'package:flutter_navigation_example/services/navigation_service.dart';

class HomeViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future logout({bool success = true}) async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 1));

    if (!success) {
      setErrorMessage('Error has occured during sign out');
    } else {
      _navigationService.goBack();
    }
  }
}
