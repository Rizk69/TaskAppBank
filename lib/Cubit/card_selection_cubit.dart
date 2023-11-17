import 'package:flutter_bloc/flutter_bloc.dart';

class CardSelectionCubit extends Cubit<int> {
  CardSelectionCubit() : super(0);

  void updateIndex(int index) {
    emit(index);
  }
}

class ColorSelectionCubit extends Cubit<int> {
  ColorSelectionCubit() : super(0);

  void updateIndex(int index) {
    emit(index);
  }
}
