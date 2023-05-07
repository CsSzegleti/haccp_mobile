# inventory_api.api.ControlPropertyApi

## Load the API package
```dart
import 'package:inventory_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addNewControlProperty**](ControlPropertyApi.md#addnewcontrolproperty) | **POST** /api/v1/storage/{storageId}/ccp/{ccpId}/property | Administrate new property.
[**findControlPropertyById**](ControlPropertyApi.md#findcontrolpropertybyid) | **GET** /api/v1/storage/{storageId}/ccp/{ccpId}/property/{id} | Find  by ID.
[**getLastControlProperty**](ControlPropertyApi.md#getlastcontrolproperty) | **GET** /api/v1/storage/{storageId}/ccp/{ccpId}/property/last | Find latest property for the critical control point.
[**listAllControlProperty**](ControlPropertyApi.md#listallcontrolproperty) | **GET** /api/v1/storage/{storageId}/ccp/{ccpId}/property | List all properties for the critical control point.


# **addNewControlProperty**
> Object addNewControlProperty(ccpId, storageId, controlProperty)

Administrate new property.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = ControlPropertyApi();
final ccpId = ccpId_example; // String | 
final storageId = storageId_example; // String | 
final controlProperty = ControlProperty(); // ControlProperty | 

try {
    final result = api_instance.addNewControlProperty(ccpId, storageId, controlProperty);
    print(result);
} catch (e) {
    print('Exception when calling ControlPropertyApi->addNewControlProperty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ccpId** | **String**|  | 
 **storageId** | **String**|  | 
 **controlProperty** | [**ControlProperty**](ControlProperty.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findControlPropertyById**
> ControlProperty findControlPropertyById(ccpId, storageId, id)

Find  by ID.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = ControlPropertyApi();
final ccpId = ccpId_example; // String | 
final storageId = storageId_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.findControlPropertyById(ccpId, storageId, id);
    print(result);
} catch (e) {
    print('Exception when calling ControlPropertyApi->findControlPropertyById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ccpId** | **String**|  | 
 **storageId** | **String**|  | 
 **id** | **String**|  | 

### Return type

[**ControlProperty**](ControlProperty.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLastControlProperty**
> ControlProperty getLastControlProperty(ccpId, storageId)

Find latest property for the critical control point.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = ControlPropertyApi();
final ccpId = ccpId_example; // String | 
final storageId = storageId_example; // String | 

try {
    final result = api_instance.getLastControlProperty(ccpId, storageId);
    print(result);
} catch (e) {
    print('Exception when calling ControlPropertyApi->getLastControlProperty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ccpId** | **String**|  | 
 **storageId** | **String**|  | 

### Return type

[**ControlProperty**](ControlProperty.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllControlProperty**
> ControlProperty listAllControlProperty(ccpId, storageId)

List all properties for the critical control point.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = ControlPropertyApi();
final ccpId = ccpId_example; // String | 
final storageId = storageId_example; // String | 

try {
    final result = api_instance.listAllControlProperty(ccpId, storageId);
    print(result);
} catch (e) {
    print('Exception when calling ControlPropertyApi->listAllControlProperty: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ccpId** | **String**|  | 
 **storageId** | **String**|  | 

### Return type

[**ControlProperty**](ControlProperty.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

