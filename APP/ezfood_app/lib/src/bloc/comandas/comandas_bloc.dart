import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'comandas_event.dart';
part 'comandas_state.dart';

class ComandasBloc extends Bloc<ComandasEvent, ComandasState> {
  ComandasBloc() : super(ComandasInitial()) {
    on<ComandasEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
