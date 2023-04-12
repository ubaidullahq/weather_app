class CityWeather {
  CityWeather({
    this.coord,
    this.weather,
    this.base,
    this.main,
    this.visibility,
    this.wind,
    this.clouds,
    this.dt,
    this.sys,
    this.timezone,
    this.id,
    this.name,
    this.cod,
  });
  Coord? coord;
  List<Weather>? weather;
  String? base;
  Main? main;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  Sys? sys;
  int? timezone;
  int? id;
  String? name;
  int? cod;

  CityWeather.fromJson(Map<String, dynamic> json) {
    coord = Coord.fromJson(json['coord']);
    weather = List.from(json['weather']).map((e) => Weather.fromJson(e)).toList();
    base = json['base'] ?? '';
    main = Main.fromJson(json['main']);
    visibility = json['visibility'] ?? '';
    wind = Wind.fromJson(json['wind']);
    clouds = Clouds.fromJson(json['clouds']);
    dt = json['dt'] ?? 0;
    sys = Sys.fromJson(json['sys']);
    timezone = json['timezone'] ?? 0;
    id = json['id'] ?? 0;
    name = json['name'] ?? '';
    cod = json['cod'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['coord'] = coord!.toJson();
    data['weather'] = weather!.map((e) => e.toJson()).toList();
    data['base'] = base;
    data['main'] = main!.toJson();
    data['visibility'] = visibility;
    data['wind'] = wind!.toJson();
    data['clouds'] = clouds!.toJson();
    data['dt'] = dt;
    data['sys'] = sys!.toJson();
    data['timezone'] = timezone;
    data['id'] = id;
    data['name'] = name;
    data['cod'] = cod;
    return data;
  }
}

class Coord {
  Coord({
    required this.lon,
    required this.lat,
  });
  late final num lon;
  late final num lat;

  Coord.fromJson(Map<String, dynamic> json) {
    lon = json['lon'] ?? 0;
    lat = json['lat'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['lon'] = lon;
    data['lat'] = lat;
    return data;
  }
}

class Weather {
  Weather({
    required this.id,
    required this.main,
    required this.description,
    required this.icon,
  });
  late final int id;
  late final String main;
  late final String description;
  late final String icon;

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'] ?? 0;
    main = json['main'] ?? '';
    description = json['description'] ?? '';
    icon = json['icon'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['main'] = main;
    data['description'] = description;
    data['icon'] = icon;
    return data;
  }
}

class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
    required this.pressure,
    required this.humidity,
    required this.seaLevel,
    required this.grndLevel,
  });
  late final num temp;
  late final num feelsLike;
  late final num tempMin;
  late final num tempMax;
  late final num pressure;
  late final num humidity;
  late final num seaLevel;
  late final num grndLevel;

  Main.fromJson(Map<String, dynamic> json) {
    temp = json['temp'] ?? 0.0;
    feelsLike = json['feels_like'] ?? 0.0;
    tempMin = json['temp_min'] ?? 0.0;
    tempMax = json['temp_max'] ?? 0.0;
    pressure = json['pressure'] ?? 0;
    humidity = json['humidity'] ?? 0;
    seaLevel = json['sea_level'] ?? 0;
    grndLevel = json['grnd_level'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['temp'] = temp;
    data['feels_like'] = feelsLike;
    data['temp_min'] = tempMin;
    data['temp_max'] = tempMax;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['sea_level'] = seaLevel;
    data['grnd_level'] = grndLevel;
    return data;
  }
}

class Wind {
  Wind({
    required this.speed,
    required this.deg,
    required this.gust,
  });
  late final num speed;
  late final num deg;
  late final num gust;

  Wind.fromJson(Map<String, dynamic> json) {
    speed = json['speed'] ?? 0.0;
    deg = json['deg'] ?? 0;
    gust = json['gust'] ?? 0.0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['speed'] = speed;
    data['deg'] = deg;
    data['gust'] = gust;
    return data;
  }
}

class Clouds {
  Clouds({
    required this.all,
  });
  late final num all;

  Clouds.fromJson(Map<String, dynamic> json) {
    all = json['all']??0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['all'] = all;
    return data;
  }
}

class Sys {
  Sys({
    required this.type,
    required this.id,
    required this.country,
    required this.sunrise,
    required this.sunset,
  });
  late final num type;
  late final num id;
  late final String country;
  late final num sunrise;
  late final num sunset;

  Sys.fromJson(Map<String, dynamic> json) {
    type = json['type'] ?? 0;
    id = json['id'] ?? 0;
    country = json['country'] ?? '';
    sunrise = json['sunrise'] ?? 0;
    sunset = json['sunset'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    data['country'] = country;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    return data;
  }
}
