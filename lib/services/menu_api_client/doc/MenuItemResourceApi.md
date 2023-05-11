# menu_api.api.MenuItemResourceApi

## Load the API package
```dart
import 'package:menu_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMenuItem**](MenuItemResourceApi.md#addmenuitem) | **POST** /api/v1/menu/item | 
[**deleteMenuItemById**](MenuItemResourceApi.md#deletemenuitembyid) | **DELETE** /api/v1/menu/item/{id} | 
[**getMenuItemById**](MenuItemResourceApi.md#getmenuitembyid) | **GET** /api/v1/menu/item/{id} | 
[**listMenuItems**](MenuItemResourceApi.md#listmenuitems) | **GET** /api/v1/menu/item | 
[**updateMenuItem**](MenuItemResourceApi.md#updatemenuitem) | **PUT** /api/v1/menu/item/{id} | 


# **addMenuItem**
> Object addMenuItem(menuItem)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();
final menuItem = MenuItem(); // MenuItem | 

try {
    final result = api_instance.addMenuItem(menuItem);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->addMenuItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **menuItem** | [**MenuItem**](MenuItem.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMenuItemById**
> deleteMenuItemById(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();
final id = 789; // int | 

try {
    api_instance.deleteMenuItemById(id);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->deleteMenuItemById: $e\n');
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

# **getMenuItemById**
> MenuItem getMenuItemById(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();
final id = 789; // int | 

try {
    final result = api_instance.getMenuItemById(id);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->getMenuItemById: $e\n');
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

# **listMenuItems**
> List<MenuItem> listMenuItems()



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();

try {
    final result = api_instance.listMenuItems();
    print(result);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->listMenuItems: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MenuItem>**](MenuItem.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMenuItem**
> Object updateMenuItem(id, menuItem)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = MenuItemResourceApi();
final id = 789; // int | 
final menuItem = MenuItem(); // MenuItem | 

try {
    final result = api_instance.updateMenuItem(id, menuItem);
    print(result);
} catch (e) {
    print('Exception when calling MenuItemResourceApi->updateMenuItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **menuItem** | [**MenuItem**](MenuItem.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

