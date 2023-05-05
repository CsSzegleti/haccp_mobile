//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of menu_api.api;

class MenuItemDto {
  /// Returns a new [MenuItemDto] instance.
  MenuItemDto({
    this.id,
    this.name,
    this.price,
    this.currency,
    this.categoryId,
    this.description,
    this.imgUrls = const [],
    this.allergenIds = const [],
    this.isPreparable,
    this.storingCondition,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? categoryId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<String> imgUrls;

  List<int> allergenIds;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreparable;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StoringCondition? storingCondition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuItemDto &&
     other.id == id &&
     other.name == name &&
     other.price == price &&
     other.currency == currency &&
     other.categoryId == categoryId &&
     other.description == description &&
     other.imgUrls == imgUrls &&
     other.allergenIds == allergenIds &&
     other.isPreparable == isPreparable &&
     other.storingCondition == storingCondition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (categoryId == null ? 0 : categoryId!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (imgUrls.hashCode) +
    (allergenIds.hashCode) +
    (isPreparable == null ? 0 : isPreparable!.hashCode) +
    (storingCondition == null ? 0 : storingCondition!.hashCode);

  @override
  String toString() => 'MenuItemDto[id=$id, name=$name, price=$price, currency=$currency, categoryId=$categoryId, description=$description, imgUrls=$imgUrls, allergenIds=$allergenIds, isPreparable=$isPreparable, storingCondition=$storingCondition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.categoryId != null) {
      json[r'categoryId'] = this.categoryId;
    } else {
      json[r'categoryId'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'imgUrls'] = this.imgUrls;
      json[r'allergenIds'] = this.allergenIds;
    if (this.isPreparable != null) {
      json[r'isPreparable'] = this.isPreparable;
    } else {
      json[r'isPreparable'] = null;
    }
    if (this.storingCondition != null) {
      json[r'storingCondition'] = this.storingCondition;
    } else {
      json[r'storingCondition'] = null;
    }
    return json;
  }

  /// Returns a new [MenuItemDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuItemDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MenuItemDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MenuItemDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MenuItemDto(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        price: mapValueOfType<double>(json, r'price'),
        currency: mapValueOfType<String>(json, r'currency'),
        categoryId: mapValueOfType<int>(json, r'categoryId'),
        description: mapValueOfType<String>(json, r'description'),
        imgUrls: json[r'imgUrls'] is List
            ? (json[r'imgUrls'] as List).cast<String>()
            : const [],
        allergenIds: json[r'allergenIds'] is List
            ? (json[r'allergenIds'] as List).cast<int>()
            : const [],
        isPreparable: mapValueOfType<bool>(json, r'isPreparable'),
        storingCondition: StoringCondition.fromJson(json[r'storingCondition']),
      );
    }
    return null;
  }

  static List<MenuItemDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MenuItemDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MenuItemDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MenuItemDto> mapFromJson(dynamic json) {
    final map = <String, MenuItemDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MenuItemDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MenuItemDto-objects as value to a dart map
  static Map<String, List<MenuItemDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MenuItemDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MenuItemDto.listFromJson(entry.value, growable: growable,);
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

