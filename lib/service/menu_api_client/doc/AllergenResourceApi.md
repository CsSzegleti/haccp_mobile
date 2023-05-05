# menu_api.api.AllergenResourceApi

## Load the API package
```dart
import 'package:menu_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1MenuAllergenGet**](AllergenResourceApi.md#apiv1menuallergenget) | **GET** /api/v1/menu/allergen | 
[**apiV1MenuAllergenIdDelete**](AllergenResourceApi.md#apiv1menuallergeniddelete) | **DELETE** /api/v1/menu/allergen/{id} | 
[**apiV1MenuAllergenIdGet**](AllergenResourceApi.md#apiv1menuallergenidget) | **GET** /api/v1/menu/allergen/{id} | 
[**apiV1MenuAllergenPost**](AllergenResourceApi.md#apiv1menuallergenpost) | **POST** /api/v1/menu/allergen | 
[**apiV1MenuAllergenPut**](AllergenResourceApi.md#apiv1menuallergenput) | **PUT** /api/v1/menu/allergen | 


# **apiV1MenuAllergenGet**
> StoringCondition apiV1MenuAllergenGet()



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();

try {
    final result = api_instance.apiV1MenuAllergenGet();
    print(result);
} catch (e) {
    print('Exception when calling AllergenResourceApi->apiV1MenuAllergenGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**StoringCondition**](StoringCondition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuAllergenIdDelete**
> apiV1MenuAllergenIdDelete(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();
final id = 789; // int | 

try {
    api_instance.apiV1MenuAllergenIdDelete(id);
} catch (e) {
    print('Exception when calling AllergenResourceApi->apiV1MenuAllergenIdDelete: $e\n');
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

# **apiV1MenuAllergenIdGet**
> StoringCondition apiV1MenuAllergenIdGet(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();
final id = 789; // int | 

try {
    final result = api_instance.apiV1MenuAllergenIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling AllergenResourceApi->apiV1MenuAllergenIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**StoringCondition**](StoringCondition.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuAllergenPost**
> Object apiV1MenuAllergenPost(allergen)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();
final allergen = Allergen(); // Allergen | 

try {
    final result = api_instance.apiV1MenuAllergenPost(allergen);
    print(result);
} catch (e) {
    print('Exception when calling AllergenResourceApi->apiV1MenuAllergenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allergen** | [**Allergen**](Allergen.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1MenuAllergenPut**
> Object apiV1MenuAllergenPut(allergen)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();
final allergen = Allergen(); // Allergen | 

try {
    final result = api_instance.apiV1MenuAllergenPut(allergen);
    print(result);
} catch (e) {
    print('Exception when calling AllergenResourceApi->apiV1MenuAllergenPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **allergen** | [**Allergen**](Allergen.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

