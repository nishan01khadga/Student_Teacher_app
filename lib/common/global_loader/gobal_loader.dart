import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppLoader extends StateNotifier<bool>{
  AppLoader():super(false);

  @override
  bool build(){
    return false;
  }
  void setLoaderValue(bool value){
    state = value;
  }
}
final appLoaderProvider =
StateNotifierProvider<AppLoader, bool>((ref) {
  return AppLoader();
});
