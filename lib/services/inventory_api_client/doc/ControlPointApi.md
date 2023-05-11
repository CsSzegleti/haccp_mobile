# inventory_api.api.ControlPointApi

## Load the API package
```dart
import 'package:inventory_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addControlPoint**](ControlPointApi.md#addcontrolpoint) | **POST** /api/v1/storage/{storageId}/ccp | Create new storage.
[**findControlPointById**](ControlPointApi.md#findcontrolpointbyid) | **GET** /api/v1/storage/{storageId}/ccp/{id} | Find critical control point by ID.
[**listAllControlPoints**](ControlPointApi.md#listallcontrolpoints) | **GET** /api/v1/storage/{storageId}/ccp | List all critical control points.
[**modifyControlPoint**](ControlPointApi.md#modifycontrolpoint) | **PUT** /api/v1/storage/{storageId}/ccp/{id} | Update existing critical control point.


# **addControlPoint**
> Object addControlPoint(storageId, controlPoint)

Create new storage.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = ControlPointApi();
final storageId = storageId_example; // String | 
final controlPoint = ControlPoint(); // ControlPoint | 

try {
    final result = api_instance.addControlPoint(storageId, controlPoint);
    print(result);
} catch (e) {
    print('Exception when calling ControlPointApi->addControlPoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **String**|  | 
 **controlPoint** | [**ControlPoint**](ControlPoint.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findControlPointById**
> ControlPoint findControlPointById(storageId, id)

Find critical control point by ID.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = ControlPointApi();
final storageId = storageId_example; // String | 
final id = id_example; // String | 

try {
    final result = api_instance.findControlPointById(storageId, id);
    print(result);
} catch (e) {
    print('Exception when calling ControlPointApi->findControlPointById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **String**|  | 
 **id** | **String**|  | 

### Return type

[**ControlPoint**](ControlPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllControlPoints**
> List<ControlPoint> listAllControlPoints(storageId)

List all critical control points.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = ControlPointApi();
final storageId = storageId_example; // String | 

try {
    final result = api_instance.listAllControlPoints(storageId);
    print(result);
} catch (e) {
    print('Exception when calling ControlPointApi->listAllControlPoints: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **String**|  | 

### Return type

[**List<ControlPoint>**](ControlPoint.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyControlPoint**
> Object modifyControlPoint(storageId, id, controlPoint)

Update existing critical control point.

### Example
```dart
import 'package:inventory_api/api.dart';

final api_instance = ControlPointApi();
final storageId = storageId_example; // String | 
final id = id_example; // String | 
final controlPoint = ControlPoint(); // ControlPoint | 

try {
    final result = api_instance.modifyControlPoint(storageId, id, controlPoint);
    print(result);
} catch (e) {
    print('Exception when calling ControlPointApi->modifyControlPoint: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **storageId** | **String**|  | 
 **id** | **String**|  | 
 **controlPoint** | [**ControlPoint**](ControlPoint.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

