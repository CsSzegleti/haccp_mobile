//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of inventory_api.api;


class FoodStorageApi {
  FoodStorageApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Add menu item to storage using its ID. Returns
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [InventoryItemToMoveDto] inventoryItemToMoveDto:
  Future<Response> addMenuItemToFoodStorageWithHttpInfo(String id, { InventoryItemToMoveDto? inventoryItemToMoveDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{id}/add_item'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = inventoryItemToMoveDto;

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

  /// Add menu item to storage using its ID. Returns
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [InventoryItemToMoveDto] inventoryItemToMoveDto:
  Future<void> addMenuItemToFoodStorage(String id, { InventoryItemToMoveDto? inventoryItemToMoveDto, }) async {
    final response = await addMenuItemToFoodStorageWithHttpInfo(id,  inventoryItemToMoveDto: inventoryItemToMoveDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Create new storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FoodStorage] foodStorage:
  Future<Response> addNewFoodStorageWithHttpInfo({ FoodStorage? foodStorage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage';

    // ignore: prefer_final_locals
    Object? postBody = foodStorage;

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
  /// * [FoodStorage] foodStorage:
  Future<Object?> addNewFoodStorage({ FoodStorage? foodStorage, }) async {
    final response = await addNewFoodStorageWithHttpInfo( foodStorage: foodStorage, );
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

  /// Delete food storage by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteFoodStorageByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete food storage by ID.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteFoodStorageById(String id,) async {
    final response = await deleteFoodStorageByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Find storage by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> findFoodStorageByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{id}'
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

  /// Find storage by ID.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<FoodStorage?> findFoodStorageById(String id,) async {
    final response = await findFoodStorageByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FoodStorage',) as FoodStorage;
    
    }
    return null;
  }

  /// List all storages.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listAllFoodStoragesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage';

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

  /// List all storages.
  Future<FoodStorage?> listAllFoodStorages() async {
    final response = await listAllFoodStoragesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FoodStorage',) as FoodStorage;
    
    }
    return null;
  }

  /// Remove menu item from storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [InventoryItemToMoveDto] inventoryItemToMoveDto:
  Future<Response> removeMenuItemFromFoodStorageWithHttpInfo(String id, { InventoryItemToMoveDto? inventoryItemToMoveDto, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{id}/remove_item'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = inventoryItemToMoveDto;

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

  /// Remove menu item from storage.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [InventoryItemToMoveDto] inventoryItemToMoveDto:
  Future<void> removeMenuItemFromFoodStorage(String id, { InventoryItemToMoveDto? inventoryItemToMoveDto, }) async {
    final response = await removeMenuItemFromFoodStorageWithHttpInfo(id,  inventoryItemToMoveDto: inventoryItemToMoveDto, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update existing food storage.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [FoodStorage] foodStorage:
  Future<Response> updateFoodStorageWithHttpInfo(String id, { FoodStorage? foodStorage, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/storage/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = foodStorage;

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

  /// Update existing food storage.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [FoodStorage] foodStorage:
  Future<Object?> updateFoodStorage(String id, { FoodStorage? foodStorage, }) async {
    final response = await updateFoodStorageWithHttpInfo(id,  foodStorage: foodStorage, );
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
