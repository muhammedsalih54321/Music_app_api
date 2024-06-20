import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:music_app/Repository/Api/music/Music_api.dart';
import 'package:music_app/Repository/Model/Music_model.dart';

part 'music_event.dart';
part 'music_state.dart';

class MusicBloc extends Bloc<MusicEvent, MusicState> {
  late Musicmodel musicmodel;
  MusicApi musicApi=MusicApi();
  MusicBloc() : super(MusicInitial()) {
    on<MusicEvent>((event, emit)async {
     emit(Musicblocloading());
     try {
       musicmodel= await musicApi.getMusic();
       emit(Musicblocloaded());
     } catch (e) {
       print(e);
       emit(Musicblocerror());
     }
    });
  }
}
