# menu_api.api.MenuItemResourceApi

## Load the API package
```dart
import 'package:menu_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1MenuItemGet**](MenuItemResourceApi.md#apiv1menuitemget) | **GET** /api/v1/menu/item | 
[**apiV1MenuItemIdDelete**](MenuItemResourceApi.md#apiv1menuitemiddelete) | **DELETE** /api/v1/menu/item/{id} | 
[**apiV1MenuItemIdGet**](MenuItemResourceApi.md#apiv1menuitemidget) | **GET** /api/v1/menu/item/{id} | 
[**apiV1MenuItemPost**](MenuItemResourceApi.md#apiv1menuitempost) | **POST** /api/v1/menu/item | 
[**apiV1MenuItemPut**](MenuItemResourceApi.md#apiv1menuitemput) | **PUT** /api/v1/menu/item | 


# **apiV1MenuItemGet**
> MenuItem apiV1MenuItemGet()



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();

try {
    final result = api_instance.apiV1MenuItemGet();
    print(result);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->apiV1MenuItemGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MenuItem**](MenuItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuItemIdDelete**
> apiV1MenuItemIdDelete(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();
final id = 789; // int | 

try {
    api_instance.apiV1MenuItemIdDelete(id);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->apiV1MenuItemIdDelete: $e\n');
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

# **apiV1MenuItemIdGet**
> MenuItem apiV1MenuItemIdGet(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();
final id = 789; // int | 

try {
    final result = api_instance.apiV1MenuItemIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->apiV1MenuItemIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**MenuItem**](MenuItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuItemPost**
> Object apiV1MenuItemPost(menuItemDto)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();
final menuItemDto = MenuItemDto(); // MenuItemDto | 

try {
    final result = api_instance.apiV1MenuItemPost(menuItemDto);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->apiV1MenuItemPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuItemDto** | [**MenuItemDto**](MenuItemDto.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuItemPut**
> Object apiV1MenuItemPut(menuItemDto)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();
final menuItemDto = MenuItemDto(); // MenuItemDto | 

try {
    final result = api_instance.apiV1MenuItemPut(menuItemDto);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->apiV1MenuItemPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuItemDto** | [**MenuItemDto**](MenuItemDto.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

