import 'package:equatable/equatable.dart';
class Weather extends Equatable{
    final String cod;
    final int message;
    final int cnt;
    final List<ListElement> list;
    final City city;

    Weather({
        this.cod,
        this.message,
        this.cnt,
        this.list,
        this.city,
    });
    
    @override 
    List<Object> get props => [list,city];

    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
        cod: json["cod"] == null ? null : json["cod"],
        message: json["message"] == null ? null : json["message"],
        cnt: json["cnt"] == null ? null : json["cnt"],
        list: json["list"] == null ? null : List<ListElement>.from(json["list"].map((x) => ListElement.fromJson(x))),
        city: json["city"] == null ? null : City.fromJson(json["city"]),
    );

    Map<String, dynamic> toJson() => {
        "cod": cod == null ? null : cod,
        "message": message == null ? null : message,
        "cnt": cnt == null ? null : cnt,
        "list": list == null ? null : List<dynamic>.from(list.map((x) => x.toJson())),
        "city": city == null ? null : city.toJson(),
    };
}

class City {
    final int id;
    final String name;
    final Coord coord;
    final String country;
    final int population;
    final int timezone;
    final int sunrise;
    final int sunset;

    City({
        this.id,
        this.name,
        this.coord,
        this.country,
        this.population,
        this.timezone,
        this.sunrise,
        this.sunset,
    });

    factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        coord: json["coord"] == null ? null : Coord.fromJson(json["coord"]),
        country: json["country"] == null ? null : json["country"],
        population: json["population"] == null ? null : json["population"],
        timezone: json["timezone"] == null ? null : json["timezone"],
        sunrise: json["sunrise"] == null ? null : json["sunrise"],
        sunset: json["sunset"] == null ? null : json["sunset"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "coord": coord == null ? null : coord.toJson(),
        "country": country == null ? null : country,
        "population": population == null ? null : population,
        "timezone": timezone == null ? null : timezone,
        "sunrise": sunrise == null ? null : sunrise,
        "sunset": sunset == null ? null : sunset,
    };
}

class Coord {
    final double lat;
    final double lon;

    Coord({
        this.lat,
        this.lon,
    });

    factory Coord.fromJson(Map<String, dynamic> json) => Coord(
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        lon: json["lon"] == null ? null : json["lon"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "lat": lat == null ? null : lat,
        "lon": lon == null ? null : lon,
    };
}

class ListElement {
    final int dt;
    final MainClass main;
    final List<WeatherElement> weather;
    final Clouds clouds;
    final Wind wind;
    final Sys sys;
    final DateTime dtTxt;
    final Rain rain;

    ListElement({
        this.dt,
        this.main,
        this.weather,
        this.clouds,
        this.wind,
        this.sys,
        this.dtTxt,
        this.rain,
    });

    factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
        dt: json["dt"] == null ? null : json["dt"],
        main: json["main"] == null ? null : MainClass.fromJson(json["main"]),
        weather: json["weather"] == null ? null : List<WeatherElement>.from(json["weather"].map((x) => WeatherElement.fromJson(x))),
        clouds: json["clouds"] == null ? null : Clouds.fromJson(json["clouds"]),
        wind: json["wind"] == null ? null : Wind.fromJson(json["wind"]),
        sys: json["sys"] == null ? null : Sys.fromJson(json["sys"]),
        dtTxt: json["dt_txt"] == null ? null : DateTime.parse(json["dt_txt"]),
        rain: json["rain"] == null ? null : Rain.fromJson(json["rain"]),
    );

    Map<String, dynamic> toJson() => {
        "dt": dt == null ? null : dt,
        "main": main == null ? null : main.toJson(),
        "weather": weather == null ? null : List<dynamic>.from(weather.map((x) => x.toJson())),
        "clouds": clouds == null ? null : clouds.toJson(),
        "wind": wind == null ? null : wind.toJson(),
        "sys": sys == null ? null : sys.toJson(),
        "dt_txt": dtTxt == null ? null : dtTxt.toIso8601String(),
        "rain": rain == null ? null : rain.toJson(),
    };
}

class Clouds {
    final int all;

    Clouds({
        this.all,
    });

    factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
        all: json["all"] == null ? null : json["all"],
    );

    Map<String, dynamic> toJson() => {
        "all": all == null ? null : all,
    };
}

class MainClass {
    final double temp;
    final double feelsLike;
    final double tempMin;
    final double tempMax;
    final int pressure;
    final int seaLevel;
    final int grndLevel;
    final int humidity;
    final double tempKf;

    MainClass({
        this.temp,
        this.feelsLike,
        this.tempMin,
        this.tempMax,
        this.pressure,
        this.seaLevel,
        this.grndLevel,
        this.humidity,
        this.tempKf,
    });

    factory MainClass.fromJson(Map<String, dynamic> json) => MainClass(
        temp: json["temp"] == null ? null : json["temp"].toDouble(),
        feelsLike: json["feels_like"] == null ? null : json["feels_like"].toDouble(),
        tempMin: json["temp_min"] == null ? null : json["temp_min"].toDouble(),
        tempMax: json["temp_max"] == null ? null : json["temp_max"].toDouble(),
        pressure: json["pressure"] == null ? null : json["pressure"],
        seaLevel: json["sea_level"] == null ? null : json["sea_level"],
        grndLevel: json["grnd_level"] == null ? null : json["grnd_level"],
        humidity: json["humidity"] == null ? null : json["humidity"],
        tempKf: json["temp_kf"] == null ? null : json["temp_kf"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "temp": temp == null ? null : temp,
        "feels_like": feelsLike == null ? null : feelsLike,
        "temp_min": tempMin == null ? null : tempMin,
        "temp_max": tempMax == null ? null : tempMax,
        "pressure": pressure == null ? null : pressure,
        "sea_level": seaLevel == null ? null : seaLevel,
        "grnd_level": grndLevel == null ? null : grndLevel,
        "humidity": humidity == null ? null : humidity,
        "temp_kf": tempKf == null ? null : tempKf,
    };
}

class Rain {
    final double the3H;

    Rain({
        this.the3H,
    });

    factory Rain.fromJson(Map<String, dynamic> json) => Rain(
        the3H: json["3h"] == null ? null : json["3h"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "3h": the3H == null ? null : the3H,
    };
}

class Sys {
    final Pod pod;

    Sys({
        this.pod,
    });

    factory Sys.fromJson(Map<String, dynamic> json) => Sys(
        pod: json["pod"] == null ? null : podValues.map[json["pod"]],
    );

    Map<String, dynamic> toJson() => {
        "pod": pod == null ? null : podValues.reverse[pod],
    };
}

enum Pod { N, D }

final podValues = EnumValues({
    "d": Pod.D,
    "n": Pod.N
});

class WeatherElement {
    final int id;
    final MainEnum main;
    final String description;
    final String icon;

    WeatherElement({
        this.id,
        this.main,
        this.description,
        this.icon,
    });

    factory WeatherElement.fromJson(Map<String, dynamic> json) => WeatherElement(
        id: json["id"] == null ? null : json["id"],
        main: json["main"] == null ? null : mainEnumValues.map[json["main"]],
        description: json["description"] == null ? null : json["description"],
        icon: json["icon"] == null ? null : json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "main": main == null ? null : mainEnumValues.reverse[main],
        "description": description == null ? null : description,
        "icon": icon == null ? null : icon,
    };
}

enum MainEnum { CLOUDS, CLEAR, RAIN }

final mainEnumValues = EnumValues({
    "Clear": MainEnum.CLEAR,
    "Clouds": MainEnum.CLOUDS,
    "Rain": MainEnum.RAIN
});

class Wind {
    final double speed;
    final int deg;

    Wind({
        this.speed,
        this.deg,
    });

    factory Wind.fromJson(Map<String, dynamic> json) => Wind(
        speed: json["speed"] == null ? null : json["speed"].toDouble(),
        deg: json["deg"] == null ? null : json["deg"],
    );

    Map<String, dynamic> toJson() => {
        "speed": speed == null ? null : speed,
        "deg": deg == null ? null : deg,
    };
}

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}