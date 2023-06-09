//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of inventory_api.api;

class InventoryItem {
  /// Returns a new [InventoryItem] instance.
  InventoryItem({
    this.id,
    this.menuItemId,
    this.foodStorage,
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
  int? menuItemId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FoodStorage? foodStorage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InventoryItem &&
     other.id == id &&
     other.menuItemId == menuItemId &&
     other.foodStorage == foodStorage &&
     other.createdDate == createdDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (menuItemId == null ? 0 : menuItemId!.hashCode) +
    (foodStorage == null ? 0 : foodStorage!.hashCode) +
    (createdDate == null ? 0 : createdDate!.hashCode);

  @override
  String toString() => 'InventoryItem[id=$id, menuItemId=$menuItemId, foodStorage=$foodStorage, createdDate=$createdDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.menuItemId != null) {
      json[r'menuItemId'] = this.menuItemId;
    } else {
      json[r'menuItemId'] = null;
    }
    if (this.foodStorage != null) {
      json[r'foodStorage'] = this.foodStorage;
    } else {
      json[r'foodStorage'] = null;
    }
    if (this.createdDate != null) {
      json[r'createdDate'] = this.createdDate!.toUtc().toIso8601String();
    } else {
      json[r'createdDate'] = null;
    }
    return json;
  }

  /// Returns a new [InventoryItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InventoryItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InventoryItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InventoryItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InventoryItem(
        id: mapValueOfType<String>(json, r'id'),
        menuItemId: mapValueOfType<int>(json, r'menuItemId'),
        foodStorage: FoodStorage.fromJson(json[r'foodStorage']),
        createdDate: mapDateTime(json, r'createdDate', ''),
      );
    }
    return null;
  }

  static List<InventoryItem>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InventoryItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InventoryItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InventoryItem> mapFromJson(dynamic json) {
    final map = <String, InventoryItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InventoryItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InventoryItem-objects as value to a dart map
  static Map<String, List<InventoryItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InventoryItem>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InventoryItem.listFromJson(entry.value, growable: growable,);
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

