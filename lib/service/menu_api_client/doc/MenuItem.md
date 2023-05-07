# menu_api.model.MenuItem

## Load the model package
```dart
import 'package:menu_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **String** |  | 
**price** | **double** |  | 
**category** | [**Category**](Category.md) |  | 
**currency** | **String** |  | 
**description** | **String** |  | 
**imgUrls** | **List<String>** |  | [optional] [default to const []]
**allergens** | [**List<Allergen>**](Allergen.md) |  | [optional] [default to const []]
**isPreparable** | **bool** |  | [optional] 
**storingCondition** | [**StoringCondition**](StoringCondition.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


