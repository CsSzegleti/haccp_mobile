//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of inventory_api.api;

class InventoryItemToMoveDto {
  /// Returns a new [InventoryItemToMoveDto] instance.
  InventoryItemToMoveDto({
    this.menuItemId,
    this.quantity,
  });

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
  int? quantity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InventoryItemToMoveDto &&
     other.menuItemId == menuItemId &&
     other.quantity == quantity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (menuItemId == null ? 0 : menuItemId!.hashCode) +
    (quantity == null ? 0 : quantity!.hashCode);

  @override
  String toString() => 'InventoryItemToMoveDto[menuItemId=$menuItemId, quantity=$quantity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.menuItemId != null) {
      json[r'menuItemId'] = this.menuItemId;
    } else {
      json[r'menuItemId'] = null;
    }
    if (this.quantity != null) {
      json[r'quantity'] = this.quantity;
    } else {
      json[r'quantity'] = null;
    }
    return json;
  }

  /// Returns a new [InventoryItemToMoveDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InventoryItemToMoveDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InventoryItemToMoveDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InventoryItemToMoveDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InventoryItemToMoveDto(
        menuItemId: mapValueOfType<int>(json, r'menuItemId'),
        quantity: mapValueOfType<int>(json, r'quantity'),
      );
    }
    return null;
  }

  static List<InventoryItemToMoveDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InventoryItemToMoveDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InventoryItemToMoveDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InventoryItemToMoveDto> mapFromJson(dynamic json) {
    final map = <String, InventoryItemToMoveDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InventoryItemToMoveDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InventoryItemToMoveDto-objects as value to a dart map
  static Map<String, List<InventoryItemToMoveDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InventoryItemToMoveDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InventoryItemToMoveDto.listFromJson(entry.value, growable: growable,);
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

