//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of menu_api.api;

class StoringCondition {
  /// Returns a new [StoringCondition] instance.
  StoringCondition({
    this.id,
    required this.temperature,
    this.humidity,
    required this.maxStoringHours,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  double temperature;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? humidity;

  int maxStoringHours;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StoringCondition &&
     other.id == id &&
     other.temperature == temperature &&
     other.humidity == humidity &&
     other.maxStoringHours == maxStoringHours;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (temperature.hashCode) +
    (humidity == null ? 0 : humidity!.hashCode) +
    (maxStoringHours.hashCode);

  @override
  String toString() => 'StoringCondition[id=$id, temperature=$temperature, humidity=$humidity, maxStoringHours=$maxStoringHours]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'temperature'] = this.temperature;
    if (this.humidity != null) {
      json[r'humidity'] = this.humidity;
    } else {
      json[r'humidity'] = null;
    }
      json[r'maxStoringHours'] = this.maxStoringHours;
    return json;
  }

  /// Returns a new [StoringCondition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StoringCondition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StoringCondition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StoringCondition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StoringCondition(
        id: mapValueOfType<int>(json, r'id'),
        temperature: mapValueOfType<double>(json, r'temperature')!,
        humidity: mapValueOfType<double>(json, r'humidity'),
        maxStoringHours: mapValueOfType<int>(json, r'maxStoringHours')!,
      );
    }
    return null;
  }

  static List<StoringCondition>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StoringCondition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StoringCondition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StoringCondition> mapFromJson(dynamic json) {
    final map = <String, StoringCondition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoringCondition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StoringCondition-objects as value to a dart map
  static Map<String, List<StoringCondition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StoringCondition>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StoringCondition.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'temperature',
    'maxStoringHours',
  };
}

