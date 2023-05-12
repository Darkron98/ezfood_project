import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'catalogo_event.dart';
part 'catalogo_state.dart';

class CatalogoBloc extends Bloc<CatalogoEvent, CatalogoState> {
  CatalogoBloc() : super(CatalogoInitial()) {
    on<CatalogoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
