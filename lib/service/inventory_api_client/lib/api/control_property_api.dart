//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of inventory_api.api;


class ControlPropertyApi {
  ControlPropertyApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Administrate new property.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ccpId (required):
  ///
  /// * [String] storageId (required):
  ///
  /// * [ControlProperty] controlProperty:
  Future<Response> addNewControlPropertyWithHttpInfo(String ccpId, String storageId, { ControlProperty? controlProperty, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/ccp/{ccpId}/property'
      .replaceAll('{ccpId}', ccpId)
      .replaceAll('{storageId}', storageId);

    // ignore: prefer_final_locals
    Object? postBody = controlProperty;

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

  /// Administrate new property.
  ///
  /// Parameters:
  ///
  /// * [String] ccpId (required):
  ///
  /// * [String] storageId (required):
  ///
  /// * [ControlProperty] controlProperty:
  Future<Object?> addNewControlProperty(String ccpId, String storageId, { ControlProperty? controlProperty, }) async {
    final response = await addNewControlPropertyWithHttpInfo(ccpId, storageId,  controlProperty: controlProperty, );
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

  /// Find  by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ccpId (required):
  ///
  /// * [String] storageId (required):
  ///
  /// * [String] id (required):
  Future<Response> findControlPropertyByIdWithHttpInfo(String ccpId, String storageId, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/ccp/{ccpId}/property/{id}'
      .replaceAll('{ccpId}', ccpId)
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

  /// Find  by ID.
  ///
  /// Parameters:
  ///
  /// * [String] ccpId (required):
  ///
  /// * [String] storageId (required):
  ///
  /// * [String] id (required):
  Future<ControlProperty?> findControlPropertyById(String ccpId, String storageId, String id,) async {
    final response = await findControlPropertyByIdWithHttpInfo(ccpId, storageId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlProperty',) as ControlProperty;
    
    }
    return null;
  }

  /// Find latest property for the critical control point.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ccpId (required):
  ///
  /// * [String] storageId (required):
  Future<Response> getLastControlPropertyWithHttpInfo(String ccpId, String storageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/ccp/{ccpId}/property/last'
      .replaceAll('{ccpId}', ccpId)
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

  /// Find latest property for the critical control point.
  ///
  /// Parameters:
  ///
  /// * [String] ccpId (required):
  ///
  /// * [String] storageId (required):
  Future<ControlProperty?> getLastControlProperty(String ccpId, String storageId,) async {
    final response = await getLastControlPropertyWithHttpInfo(ccpId, storageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlProperty',) as ControlProperty;
    
    }
    return null;
  }

  /// List all properties for the critical control point.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] ccpId (required):
  ///
  /// * [String] storageId (required):
  Future<Response> listAllControlPropertyWithHttpInfo(String ccpId, String storageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/ccp/{ccpId}/property'
      .replaceAll('{ccpId}', ccpId)
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

  /// List all properties for the critical control point.
  ///
  /// Parameters:
  ///
  /// * [String] ccpId (required):
  ///
  /// * [String] storageId (required):
  Future<ControlProperty?> listAllControlProperty(String ccpId, String storageId,) async {
    final response = await listAllControlPropertyWithHttpInfo(ccpId, storageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ControlProperty',) as ControlProperty;
    
    }
    return null;
  }
}
