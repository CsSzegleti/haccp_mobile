//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of inventory_api.api;

class ControlProperty {
  /// Returns a new [ControlProperty] instance.
  ControlProperty({
    this.id,
    this.value,
    this.controlPoint,
    this.addedBy,
    this.createdDate,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ControlPoint? controlPoint;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? addedBy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ControlProperty &&
     other.id == id &&
     other.value == value &&
     other.controlPoint == controlPoint &&
     other.addedBy == addedBy &&
     other.createdDate == createdDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (controlPoint == null ? 0 : controlPoint!.hashCode) +
    (addedBy == null ? 0 : addedBy!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode);

  @override
  String toString() => 'ControlProperty[id=$id, value=$value, controlPoint=$controlPoint, addedBy=$addedBy, createdDate=$createdDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.controlPoint != null) {
      json[r'controlPoint'] = this.controlPoint;
    } else {
      json[r'controlPoint'] = null;
    }
    if (this.addedBy != null) {
      json[r'addedBy'] = this.addedBy;
    } else {
      json[r'addedBy'] = null;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate!.toUtc().toIso8601String();
    } else {
      json[r'createdDate'] = null;
    }
    return json;
  }

  /// Returns a new [ControlProperty] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ControlProperty? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ControlProperty[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ControlProperty[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ControlProperty(
        id: mapValueOfType<String>(json, r'id'),
        value: mapValueOfType<double>(json, r'value'),
        controlPoint: ControlPoint.fromJson(json[r'controlPoint']),
        addedBy: mapValueOfType<String>(json, r'addedBy'),
        createdDate: mapDateTime(json, r'createdDate', ''),
      );
    }
    return null;
  }

  static List<ControlProperty>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ControlProperty>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ControlProperty.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ControlProperty> mapFromJson(dynamic json) {
    final map = <String, ControlProperty>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ControlProperty.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ControlProperty-objects as value to a dart map
  static Map<String, List<ControlProperty>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ControlProperty>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ControlProperty.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

