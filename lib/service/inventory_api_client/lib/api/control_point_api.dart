//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of inventory_api.api;


class ControlPointApi {
  ControlPointApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create new storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  ///
  /// * [ControlPoint] controlPoint:
  Future<Response> addControlPointWithHttpInfo(String storageId, { ControlPoint? controlPoint, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/ccp'
      .replaceAll('{storageId}', storageId);

    // ignore: prefer_final_locals
    Object? postBody = controlPoint;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create new storage.
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  ///
  /// * [ControlPoint] controlPoint:
  Future<Object?> addControlPoint(String storageId, { ControlPoint? controlPoint, }) async {
    final response = await addControlPointWithHttpInfo(storageId,  controlPoint: controlPoint, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Find critical control point by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  ///
  /// * [String] id (required):
  Future<Response> findControlPointByIdWithHttpInfo(String storageId, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/ccp/{id}'
      .replaceAll('{storageId}', storageId)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Find critical control point by ID.
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  ///
  /// * [String] id (required):
  Future<ControlPoint?> findControlPointById(String storageId, String id,) async {
    final response = await findControlPointByIdWithHttpInfo(storageId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlPoint',) as ControlPoint;
    
    }
    return null;
  }

  /// List all critical control points.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  Future<Response> listAllControlPointsWithHttpInfo(String storageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/ccp'
      .replaceAll('{storageId}', storageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List all critical control points.
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  Future<List<ControlPoint>?> listAllControlPoints(String storageId,) async {
    final response = await listAllControlPointsWithHttpInfo(storageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ControlPoint>') as List)
        .cast<ControlPoint>()
        .toList();

    }
    return null;
  }

  /// Update existing critical control point.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [ControlPoint] controlPoint:
  Future<Response> modifyControlPointWithHttpInfo(String storageId, String id, { ControlPoint? controlPoint, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/ccp/{id}'
      .replaceAll('{storageId}', storageId)
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = controlPoint;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update existing critical control point.
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  ///
  /// * [String] id (required):
  ///
  /// * [ControlPoint] controlPoint:
  Future<Object?> modifyControlPoint(String storageId, String id, { ControlPoint? controlPoint, }) async {
    final response = await modifyControlPointWithHttpInfo(storageId, id,  controlPoint: controlPoint, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }
}
