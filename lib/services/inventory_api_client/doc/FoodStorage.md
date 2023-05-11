# inventory_api.model.FoodStorage

## Load the model package
```dart
import 'package:inventory_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**createdDate** | [**DateTime**](DateTime.md) |  | [optional] 
**cleanings** | [**List<Cleaning>**](Cleaning.md) |  | [optional] [default to const []]
**controlPoints** | [**List<ControlPoint>**](ControlPoint.md) |  | [optional] [default to const []]
**items** | [**List<InventoryItem>**](InventoryItem.md) |  | [optional] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


