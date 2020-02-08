part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class InitialWeather extends WeatherState {}

class WeatherError extends WeatherState{}
class WeatherLoaded extends WeatherState{
  final List<ListElement> weather;

  const WeatherLoaded({
    this.weather
  });

  @override
  List<Object> get props => [weather];
}
