import 'package:get/get.dart';
import 'package:talky/configuration_store.dart';
import 'package:talky/pages/wellcome/state.dart';
import 'package:talky/routes/name.dart';

class WellcomeController extends GetxController{
  final state = WellcomeState();
  WellcomeController();

  changedPageView(int index) async {
      state.index.value = index;
  }

  handleSignIn() async{
    await ConfigurationStore.to.saveAlreadyOpen();
    Get.offAndToNamed(AppRoutes.SIGN_IN);
  }

}