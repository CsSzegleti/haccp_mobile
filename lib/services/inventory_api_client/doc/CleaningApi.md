# inventory_api.api.CleaningApi

## Load the API package
```dart
import 'package:inventory_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCleaning**](CleaningApi.md#addcleaning) | **POST** /api/v1/storage/{storageId}/cleaning | Administrate new cleaning.
[**getCleaningById**](CleaningApi.md#getcleaningbyid) | **GET** /api/v1/storage/{storageId}/cleaning/{id} | Find cleaning by ID.
[**getLastCleaning**](CleaningApi.md#getlastcleaning) | **GET** /api/v1/storage/{storageId}/cleaning/last | Get last cleaning for the specific storage
[**listAllCleaning**](CleaningApi.md#listallcleaning) | **GET** /api/v1/storage/{storageId}/cleaning | List all cleanings for the specific storage.


# **addCleaning**
> Object addCleaning(storageId)

Administrate new cleaning.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = CleaningApi();
final storageId = storageId_example; // String | 

try {
    final result = api_instance.addCleaning(storageId);
    print(result);
} catch (e) {
    print('Exception when calling CleaningApi->addCleaning: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCleaningById**
> Cleaning getCleaningById(storageId, id)

Find cleaning by ID.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = CleaningApi();
final storageId = storageId_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.getCleaningById(storageId, id);
    print(result);
} catch (e) {
    print('Exception when calling CleaningApi->getCleaningById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **String**|  | 
 **id** | **String**|  | 

### Return type

[**Cleaning**](Cleaning.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastCleaning**
> Cleaning getLastCleaning(storageId)

Get last cleaning for the specific storage

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = CleaningApi();
final storageId = storageId_example; // String | 

try {
    final result = api_instance.getLastCleaning(storageId);
    print(result);
} catch (e) {
    print('Exception when calling CleaningApi->getLastCleaning: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **String**|  | 

### Return type

[**Cleaning**](Cleaning.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllCleaning**
> List<Cleaning> listAllCleaning(storageId)

List all cleanings for the specific storage.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = CleaningApi();
final storageId = storageId_example; // String | 

try {
    final result = api_instance.listAllCleaning(storageId);
    print(result);
} catch (e) {
    print('Exception when calling CleaningApi->listAllCleaning: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **String**|  | 

### Return type

[**List<Cleaning>**](Cleaning.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

