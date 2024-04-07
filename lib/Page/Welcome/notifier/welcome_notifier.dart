
import 'package:flutter_riverpod/flutter_riverpod.dart';

class welcome_notifier extends Notifier<int>{
  @override
  int build(){
    return 0;
  }
  void changeIndex(int value){
    state = value;
  }
}
final welcome_notifierProvider = NotifierProvider<welcome_notifier,int>((){
  return welcome_notifier();
});