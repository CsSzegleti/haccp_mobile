//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of inventory_api.api;


class LimitType {
  /// Instantiate a new enum with the provided [value].
  const LimitType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MAX = LimitType._(r'MAX');
  static const MIN = LimitType._(r'MIN');

  /// List of all possible values in this [enum][LimitType].
  static const values = <LimitType>[
    MAX,
    MIN,
  ];

  static LimitType? fromJson(dynamic value) => LimitTypeTypeTransformer().decode(value);

  static List<LimitType>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LimitType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LimitType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LimitType] to String,
/// and [decode] dynamic data back to [LimitType].
class LimitTypeTypeTransformer {
  factory LimitTypeTypeTransformer() => _instance ??= const LimitTypeTypeTransformer._();

  const LimitTypeTypeTransformer._();

  String encode(LimitType data) => data.value;

  /// Decodes a [dynamic value][data] to a LimitType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LimitType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MAX': return LimitType.MAX;
        case r'MIN': return LimitType.MIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LimitTypeTypeTransformer] instance.
  static LimitTypeTypeTransformer? _instance;
}

