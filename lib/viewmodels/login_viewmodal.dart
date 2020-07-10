import 'package:flutter_navigation_example/constants/route_paths.dart' as routes;
import 'package:flutter_navigation_example/locator.dart';
import 'package:flutter_navigation_example/services/navigation_service.dart';
import 'package:flutter_navigation_example/viewmodels/basemodel.dart';

class LoginViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();
  Future login({bool success = true}) async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 1));

    if (!success) {
      setErrorMessage('Error has occured with the login');
    } else {
      _navigationService.navigateTo(routes.HomeRoute, arguments: '\nFilledStacks');
      setErrorMessage(null);
    }

    setBusy(false);
  }
}
