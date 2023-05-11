# menu_api.api.CategoryResourceApi

## Load the API package
```dart
import 'package:menu_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addCategory**](CategoryResourceApi.md#addcategory) | **POST** /api/v1/menu/category | 
[**apiV1MenuCategoryIdItemsGet**](CategoryResourceApi.md#apiv1menucategoryiditemsget) | **GET** /api/v1/menu/category/{id}/items | 
[**deleteCategoryById**](CategoryResourceApi.md#deletecategorybyid) | **DELETE** /api/v1/menu/category/{id} | 
[**getCategoryById**](CategoryResourceApi.md#getcategorybyid) | **GET** /api/v1/menu/category/{id} | 
[**listCategories**](CategoryResourceApi.md#listcategories) | **GET** /api/v1/menu/category | 
[**modifyCategory**](CategoryResourceApi.md#modifycategory) | **PUT** /api/v1/menu/category/{id} | 


# **addCategory**
> Object addCategory(category)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final category = Category(); // Category | 

try {
    final result = api_instance.addCategory(category);
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->addCategory: $e\n');
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

# **deleteCategoryById**
> deleteCategoryById(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final id = 789; // int | 

try {
    api_instance.deleteCategoryById(id);
} catch (e) {
    print('Exception when calling CategoryResourceApi->deleteCategoryById: $e\n');
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

# **getCategoryById**
> Category getCategoryById(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final id = 789; // int | 

try {
    final result = api_instance.getCategoryById(id);
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->getCategoryById: $e\n');
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

# **listCategories**
> List<Category> listCategories()



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();

try {
    final result = api_instance.listCategories();
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->listCategories: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Category>**](Category.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyCategory**
> Object modifyCategory(id, category)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = CategoryResourceApi();
final id = 789; // int | 
final category = Category(); // Category | 

try {
    final result = api_instance.modifyCategory(id, category);
    print(result);
} catch (e) {
    print('Exception when calling CategoryResourceApi->modifyCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **category** | [**Category**](Category.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

