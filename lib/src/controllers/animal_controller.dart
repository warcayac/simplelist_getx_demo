import 'package:get/get.dart';
import 'package:simple_list/src/shared/animals_list_shared.dart';

class AnimalController extends GetxController {
  var list = <String>[].obs;
  /* ---------------------------------------------------------------------------- */
  @override
  void onInit() {
    super.onInit();
    this.fetchAnimals();
  }
  /* ---------------------------------------------------------------------------- */
  void add(item) => this.list.add(item);
  /* ---------------------------------------------------------------------------- */
  void remove(index) => this.list.removeAt(index);
  /* ---------------------------------------------------------------------------- */
  void fetchAnimals() async {
    await Future.delayed(Duration(seconds: 1));
    this.list.addAll(animalsList);
  }
}
