# menu_api.api.CategoryResourceApi

## Load the API package
```dart
import 'package:menu_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1MenuCategoryGet**](CategoryResourceApi.md#apiv1menucategoryget) | **GET** /api/v1/menu/category | 
[**apiV1MenuCategoryIdDelete**](CategoryResourceApi.md#apiv1menucategoryiddelete) | **DELETE** /api/v1/menu/category/{id} | 
[**apiV1MenuCategoryIdGet**](CategoryResourceApi.md#apiv1menucategoryidget) | **GET** /api/v1/menu/category/{id} | 
[**apiV1MenuCategoryIdItemsGet**](CategoryResourceApi.md#apiv1menucategoryiditemsget) | **GET** /api/v1/menu/category/{id}/items | 
[**apiV1MenuCategoryPost**](CategoryResourceApi.md#apiv1menucategorypost) | **POST** /api/v1/menu/category | 
[**apiV1MenuCategoryPut**](CategoryResourceApi.md#apiv1menucategoryput) | **PUT** /api/v1/menu/category | 


# **apiV1MenuCategoryGet**
> Category apiV1MenuCategoryGet()



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();

try {
    final result = api_instance.apiV1MenuCategoryGet();
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->apiV1MenuCategoryGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuCategoryIdDelete**
> apiV1MenuCategoryIdDelete(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final id = 789; // int | 

try {
    api_instance.apiV1MenuCategoryIdDelete(id);
} catch (e) {
    print('Exception when calling CategoryResourceApi->apiV1MenuCategoryIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuCategoryIdGet**
> Category apiV1MenuCategoryIdGet(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final id = 789; // int | 

try {
    final result = api_instance.apiV1MenuCategoryIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->apiV1MenuCategoryIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Category**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuCategoryIdItemsGet**
> List<MenuItem> apiV1MenuCategoryIdItemsGet(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final id = 789; // int | 

try {
    final result = api_instance.apiV1MenuCategoryIdItemsGet(id);
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->apiV1MenuCategoryIdItemsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**List<MenuItem>**](MenuItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuCategoryPost**
> Object apiV1MenuCategoryPost(category)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final category = Category(); // Category | 

try {
    final result = api_instance.apiV1MenuCategoryPost(category);
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->apiV1MenuCategoryPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**Category**](Category.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuCategoryPut**
> Object apiV1MenuCategoryPut(category)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final category = Category(); // Category | 

try {
    final result = api_instance.apiV1MenuCategoryPut(category);
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->apiV1MenuCategoryPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | [**Category**](Category.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

