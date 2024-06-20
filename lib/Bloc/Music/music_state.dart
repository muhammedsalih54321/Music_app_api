part of 'music_bloc.dart';

@immutable
sealed class MusicState {}

final class MusicInitial extends MusicState {}
class Musicblocloading extends MusicState {}
class Musicblocloaded extends MusicState {}
class Musicblocerror extends MusicState {}
