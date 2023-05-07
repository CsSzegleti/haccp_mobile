//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of menu_api.api;

class MenuItem {
  /// Returns a new [MenuItem] instance.
  MenuItem({
    this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.currency,
    required this.description,
    this.imgUrls = const [],
    this.allergens = const [],
    this.isPreparable,
    required this.storingCondition,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  String name;

  double price;

  Category category;

  String currency;

  String description;

  List<String> imgUrls;

  List<Allergen> allergens;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isPreparable;

  StoringCondition storingCondition;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MenuItem &&
     other.id == id &&
     other.name == name &&
     other.price == price &&
     other.category == category &&
     other.currency == currency &&
     other.description == description &&
     other.imgUrls == imgUrls &&
     other.allergens == allergens &&
     other.isPreparable == isPreparable &&
     other.storingCondition == storingCondition;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name.hashCode) +
    (price.hashCode) +
    (category.hashCode) +
    (currency.hashCode) +
    (description.hashCode) +
    (imgUrls.hashCode) +
    (allergens.hashCode) +
    (isPreparable == null ? 0 : isPreparable!.hashCode) +
    (storingCondition.hashCode);

  @override
  String toString() => 'MenuItem[id=$id, name=$name, price=$price, category=$category, currency=$currency, description=$description, imgUrls=$imgUrls, allergens=$allergens, isPreparable=$isPreparable, storingCondition=$storingCondition]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'name'] = this.name;
      json[r'price'] = this.price;
      json[r'category'] = this.category;
      json[r'currency'] = this.currency;
      json[r'description'] = this.description;
      json[r'imgUrls'] = this.imgUrls;
      json[r'allergens'] = this.allergens;
    if (this.isPreparable != null) {
      json[r'isPreparable'] = this.isPreparable;
    } else {
      json[r'isPreparable'] = null;
    }
      json[r'storingCondition'] = this.storingCondition;
    return json;
  }

  /// Returns a new [MenuItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MenuItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MenuItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MenuItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MenuItem(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name')!,
        price: mapValueOfType<double>(json, r'price')!,
        category: Category.fromJson(json[r'category'])!,
        currency: mapValueOfType<String>(json, r'currency')!,
        description: mapValueOfType<String>(json, r'description')!,
        imgUrls: json[r'imgUrls'] is List
            ? (json[r'imgUrls'] as List).cast<String>()
            : const [],
        allergens: Allergen.listFromJson(json[r'allergens']) ?? const [],
        isPreparable: mapValueOfType<bool>(json, r'isPreparable'),
        storingCondition: StoringCondition.fromJson(json[r'storingCondition'])!,
      );
    }
    return null;
  }

  static List<MenuItem>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MenuItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MenuItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MenuItem> mapFromJson(dynamic json) {
    final map = <String, MenuItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MenuItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MenuItem-objects as value to a dart map
  static Map<String, List<MenuItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MenuItem>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MenuItem.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'price',
    'category',
    'currency',
    'description',
    'storingCondition',
  };
}

