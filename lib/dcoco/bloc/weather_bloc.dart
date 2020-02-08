import 'dart:async';

import 'package:birthday/dcoco/model/weather_model.dart';
import 'package:birthday/dcoco/model/weather_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepo weatherRepo;

  WeatherBloc({this.weatherRepo}) : assert(weatherRepo != null);

  @override
  WeatherState get initialState => InitialWeather();

  @override
  Stream<WeatherState> mapEventToState(
    WeatherEvent event,
  ) async* {
    // TODO: Add Logic
    if (event is FetchWeather){
      yield InitialWeather();
      try{
        final List<ListElement> weather = await weatherRepo.bring();
        yield WeatherLoaded(weather: weather);
    }
    catch(_){
      WeatherError();
    }
  }
  }
}