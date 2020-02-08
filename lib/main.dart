import 'package:birthday/dcoco/bloc/bloc.dart';
import 'package:birthday/dcoco/model/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


WeatherRepo _repo = WeatherRepo();

void main() {
  runApp(MyHomePage(
    weatherrepo: _repo,
  ));}

class MyHomePage extends StatelessWidget {
  final weatherrepo;
  MyHomePage({this.weatherrepo});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        body: BlocProvider(
          create: (context) => WeatherBloc(weatherRepo: _repo)..add(FetchWeather()),
          child: SPFF(),
        ),
      ),
    );
  }
}
class SPFF extends StatefulWidget {
  @override
  _SPFFState createState() => _SPFFState();
}

class _SPFFState extends State<SPFF> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc,WeatherState>(
      builder: (context,state){
        if(state is InitialWeather){
          return Center(child: SpinKitDoubleBounce(color: Colors.amber,size: 50,),);
        }
        if (state is WeatherError){
          return Center(child: Text('No weather is available now'));
        }
        if (state is WeatherLoaded){
          return Center(child: Text(state.weather.city.name.toString()));
        }
      },
     );
  }
}