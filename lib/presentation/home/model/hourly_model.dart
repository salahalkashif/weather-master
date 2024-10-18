class HourData {
  HourData({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.hourlyUnits,
    this.hourly,
  });
  late final double? latitude;
  late final double? longitude;
  late final double? generationtimeMs;
  late final int? utcOffsetSeconds;
  late final String? timezone;
  late final String? timezoneAbbreviation;
  late final double? elevation;
  late final HourlyUnits? hourlyUnits;
  late final Hourly? hourly;

  HourData.fromJson(Map<String, dynamic> json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    generationtimeMs = json['generationtime_ms'];
    utcOffsetSeconds = json['utc_offset_seconds'];
    timezone = json['timezone'];
    timezoneAbbreviation = json['timezone_abbreviation'];
    elevation = json['elevation'];
    hourlyUnits = HourlyUnits.fromJson(json['hourly_units']);
    hourly = Hourly.fromJson(json['hourly']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['generationtime_ms'] = generationtimeMs;
    data['utc_offset_seconds'] = utcOffsetSeconds;
    data['timezone'] = timezone;
    data['timezone_abbreviation'] = timezoneAbbreviation;
    data['elevation'] = elevation;
    data['hourly_units'] = hourlyUnits?.toJson();
    data['hourly'] = hourly?.toJson();
    return data;
  }
}

class HourlyUnits {
  HourlyUnits({
    required this.time,
    required this.temperature_2m,
    required this.relativeHumidity_2m,
  });
  late final String time;
  late final String temperature_2m;
  late final String relativeHumidity_2m;

  HourlyUnits.fromJson(Map<String, dynamic> json) {
    time = json['time'];
    temperature_2m = json['temperature_2m'];
    relativeHumidity_2m = json['relative_humidity_2m'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['time'] = time;
    data['temperature_2m'] = temperature_2m;
    data['relative_humidity_2m'] = relativeHumidity_2m;
    return data;
  }
}

class Hourly {
  Hourly({
    required this.time,
    required this.temperature_2m,
    required this.relativeHumidity_2m,
  });
  late final List<dynamic> time;
  late final List<dynamic> temperature_2m;
  late final List<dynamic> relativeHumidity_2m;

  Hourly.fromJson(Map<String, dynamic> json) {
    time = List.castFrom<dynamic, dynamic>(json['time']);
    temperature_2m = List.castFrom<dynamic, dynamic>(json['temperature_2m']);
    relativeHumidity_2m =
        List.castFrom<dynamic, dynamic>(json['relative_humidity_2m']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['time'] = time;
    data['temperature_2m'] = temperature_2m;
    data['relative_humidity_2m'] = relativeHumidity_2m;
    return data;
  }
}
