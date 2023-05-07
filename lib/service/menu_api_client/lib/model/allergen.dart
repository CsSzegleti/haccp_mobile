//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of menu_api.api;

class Allergen {
  /// Returns a new [Allergen] instance.
  Allergen({
    this.id,
    required this.longName,
    required this.shortName,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String longName;

  String shortName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Allergen &&
     other.id == id &&
     other.longName == longName &&
     other.shortName == shortName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (longName.hashCode) +
    (shortName.hashCode);

  @override
  String toString() => 'Allergen[id=$id, longName=$longName, shortName=$shortName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'longName'] = this.longName;
      json[r'shortName'] = this.shortName;
    return json;
  }

  /// Returns a new [Allergen] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Allergen? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Allergen[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Allergen[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Allergen(
        id: mapValueOfType<int>(json, r'id'),
        longName: mapValueOfType<String>(json, r'longName')!,
        shortName: mapValueOfType<String>(json, r'shortName')!,
      );
    }
    return null;
  }

  static List<Allergen>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Allergen>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Allergen.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Allergen> mapFromJson(dynamic json) {
    final map = <String, Allergen>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Allergen.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Allergen-objects as value to a dart map
  static Map<String, List<Allergen>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Allergen>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Allergen.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'longName',
    'shortName',
  };
}

