# inventory_api.api.FoodStorageApi

## Load the API package
```dart
import 'package:inventory_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMenuItemToFoodStorage**](FoodStorageApi.md#addmenuitemtofoodstorage) | **POST** /api/v1/storage/{id}/add_item | Add menu item to storage using its ID. Returns
[**addNewFoodStorage**](FoodStorageApi.md#addnewfoodstorage) | **POST** /api/v1/storage | Create new storage.
[**deleteFoodStorageById**](FoodStorageApi.md#deletefoodstoragebyid) | **DELETE** /api/v1/storage/{id} | Delete food storage by ID.
[**findFoodStorageById**](FoodStorageApi.md#findfoodstoragebyid) | **GET** /api/v1/storage/{id} | Find storage by ID.
[**listAllFoodStorages**](FoodStorageApi.md#listallfoodstorages) | **GET** /api/v1/storage | List all storages.
[**removeMenuItemFromFoodStorage**](FoodStorageApi.md#removemenuitemfromfoodstorage) | **POST** /api/v1/storage/{id}/remove_item | Remove menu item from storage.
[**updateFoodStorage**](FoodStorageApi.md#updatefoodstorage) | **PUT** /api/v1/storage/{id} | Update existing food storage.


# **addMenuItemToFoodStorage**
> addMenuItemToFoodStorage(id, inventoryItemToMoveDto)

Add menu item to storage using its ID. Returns

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = FoodStorageApi();
final id = id_example; // String | 
final inventoryItemToMoveDto = InventoryItemToMoveDto(); // InventoryItemToMoveDto | 

try {
    api_instance.addMenuItemToFoodStorage(id, inventoryItemToMoveDto);
} catch (e) {
    print('Exception when calling FoodStorageApi->addMenuItemToFoodStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **inventoryItemToMoveDto** | [**InventoryItemToMoveDto**](InventoryItemToMoveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addNewFoodStorage**
> Object addNewFoodStorage(foodStorage)

Create new storage.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = FoodStorageApi();
final foodStorage = FoodStorage(); // FoodStorage | 

try {
    final result = api_instance.addNewFoodStorage(foodStorage);
    print(result);
} catch (e) {
    print('Exception when calling FoodStorageApi->addNewFoodStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **foodStorage** | [**FoodStorage**](FoodStorage.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFoodStorageById**
> deleteFoodStorageById(id)

Delete food storage by ID.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = FoodStorageApi();
final id = id_example; // String | 

try {
    api_instance.deleteFoodStorageById(id);
} catch (e) {
    print('Exception when calling FoodStorageApi->deleteFoodStorageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findFoodStorageById**
> FoodStorage findFoodStorageById(id)

Find storage by ID.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = FoodStorageApi();
final id = id_example; // String | 

try {
    final result = api_instance.findFoodStorageById(id);
    print(result);
} catch (e) {
    print('Exception when calling FoodStorageApi->findFoodStorageById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**FoodStorage**](FoodStorage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllFoodStorages**
> List<FoodStorage> listAllFoodStorages()

List all storages.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = FoodStorageApi();

try {
    final result = api_instance.listAllFoodStorages();
    print(result);
} catch (e) {
    print('Exception when calling FoodStorageApi->listAllFoodStorages: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<FoodStorage>**](FoodStorage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMenuItemFromFoodStorage**
> removeMenuItemFromFoodStorage(id, inventoryItemToMoveDto)

Remove menu item from storage.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = FoodStorageApi();
final id = id_example; // String | 
final inventoryItemToMoveDto = InventoryItemToMoveDto(); // InventoryItemToMoveDto | 

try {
    api_instance.removeMenuItemFromFoodStorage(id, inventoryItemToMoveDto);
} catch (e) {
    print('Exception when calling FoodStorageApi->removeMenuItemFromFoodStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **inventoryItemToMoveDto** | [**InventoryItemToMoveDto**](InventoryItemToMoveDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFoodStorage**
> Object updateFoodStorage(id, foodStorage)

Update existing food storage.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = FoodStorageApi();
final id = id_example; // String | 
final foodStorage = FoodStorage(); // FoodStorage | 

try {
    final result = api_instance.updateFoodStorage(id, foodStorage);
    print(result);
} catch (e) {
    print('Exception when calling FoodStorageApi->updateFoodStorage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **foodStorage** | [**FoodStorage**](FoodStorage.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

