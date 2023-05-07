//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of inventory_api.api;


class CleaningApi {
  CleaningApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Administrate new cleaning.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  Future<Response> addCleaningWithHttpInfo(String storageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/cleaning'
      .replaceAll('{storageId}', storageId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Administrate new cleaning.
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  Future<Object?> addCleaning(String storageId,) async {
    final response = await addCleaningWithHttpInfo(storageId,);
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

  /// Find cleaning by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  ///
  /// * [String] id (required):
  Future<Response> getCleaningByIdWithHttpInfo(String storageId, String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/cleaning/{id}'
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

  /// Find cleaning by ID.
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  ///
  /// * [String] id (required):
  Future<Cleaning?> getCleaningById(String storageId, String id,) async {
    final response = await getCleaningByIdWithHttpInfo(storageId, id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Cleaning',) as Cleaning;
    
    }
    return null;
  }

  /// Get last cleaning for the specific storage
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  Future<Response> getLastCleaningWithHttpInfo(String storageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/cleaning/last'
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

  /// Get last cleaning for the specific storage
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  Future<Cleaning?> getLastCleaning(String storageId,) async {
    final response = await getLastCleaningWithHttpInfo(storageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Cleaning',) as Cleaning;
    
    }
    return null;
  }

  /// List all cleanings for the specific storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  Future<Response> listAllCleaningWithHttpInfo(String storageId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{storageId}/cleaning'
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

  /// List all cleanings for the specific storage.
  ///
  /// Parameters:
  ///
  /// * [String] storageId (required):
  Future<Cleaning?> listAllCleaning(String storageId,) async {
    final response = await listAllCleaningWithHttpInfo(storageId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Cleaning',) as Cleaning;
    
    }
    return null;
  }
}
