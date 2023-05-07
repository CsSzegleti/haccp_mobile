# menu_api.api.AllergenResourceApi

## Load the API package
```dart
import 'package:menu_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addAllergen**](AllergenResourceApi.md#addallergen) | **POST** /api/v1/menu/allergen | 
[**deleteAllergenById**](AllergenResourceApi.md#deleteallergenbyid) | **DELETE** /api/v1/menu/allergen/{id} | 
[**getAllergenById**](AllergenResourceApi.md#getallergenbyid) | **GET** /api/v1/menu/allergen/{id} | 
[**listAllergens**](AllergenResourceApi.md#listallergens) | **GET** /api/v1/menu/allergen | 
[**modifyAllergen**](AllergenResourceApi.md#modifyallergen) | **PUT** /api/v1/menu/allergen/{id} | 


# **addAllergen**
> Object addAllergen(allergen)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();
final allergen = Allergen(); // Allergen | 

try {
    final result = api_instance.addAllergen(allergen);
    print(result);
} catch (e) {
    print('Exception when calling AllergenResourceApi->addAllergen: $e\n');
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

# **deleteAllergenById**
> deleteAllergenById(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();
final id = 789; // int | 

try {
    api_instance.deleteAllergenById(id);
} catch (e) {
    print('Exception when calling AllergenResourceApi->deleteAllergenById: $e\n');
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

# **getAllergenById**
> Allergen getAllergenById(id)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();
final id = 789; // int | 

try {
    final result = api_instance.getAllergenById(id);
    print(result);
} catch (e) {
    print('Exception when calling AllergenResourceApi->getAllergenById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Allergen**](Allergen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllergens**
> List<Allergen> listAllergens()



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();

try {
    final result = api_instance.listAllergens();
    print(result);
} catch (e) {
    print('Exception when calling AllergenResourceApi->listAllergens: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Allergen>**](Allergen.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyAllergen**
> Object modifyAllergen(id, allergen)



### Example
```dart
import 'package:menu_api/api.dart';

final api_instance = AllergenResourceApi();
final id = 789; // int | 
final allergen = Allergen(); // Allergen | 

try {
    final result = api_instance.modifyAllergen(id, allergen);
    print(result);
} catch (e) {
    print('Exception when calling AllergenResourceApi->modifyAllergen: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **allergen** | [**Allergen**](Allergen.md)|  | [optional] 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

