# galadriel
Gem for handling parameter arrays.

```ruby
hash_array = Galadriel.parse(params[:my_params])
```

## From

```
{
  "id": [
    "231",
    "609"
  ],
  "item_short_name": [
    "Glifosato",
    "Diesel"
  ],
  "profit_center_code": [
    "",
    ""
  ],
  "name": [
    "Glifosan 10L",
    "Disel 1L"
  ],
  "container": [
    "10.0 L",
    "1.0 L"
  ],
  "onhand_quantity": [
    "124.1000 und",
    "489.5000 und"
  ],
  "reserved_quantity": [
    "0.0000 und",
    "0.0000 und"
  ],
  "diff_quantity": [
    "114.1000  und",
    "479.5000  und"
  ],
  "new_quantity": [
    "10.0000  und",
    "10.0000  und"
  ],
  "new_unit_cost": [
    "350.0000",
    "23.0000"
  ],
  "reason": [
    "4",
    "2"
  ],
  "reason_type": [
    "Reducción",
    "Reducción"
  ]
}
```

## To

```
[
  {
    "id": "231",
    "item_short_name": "Glifosato",
    "profit_center_code": "",
    "name": "Glifosan 10L",
    "container": "10.0 L",
    "onhand_quantity": "124.1000 und",
    "reserved_quantity": "0.0000 und",
    "diff_quantity": "114.1000  und",
    "new_quantity": "10.0000  und",
    "new_unit_cost": "350.0000",
    "reason": "4",
    "reason_type": "Reducción"
  },
  {
    "id": "609",
    "item_short_name": "Diesel",
    "profit_center_code": "",
    "name": "Disel 1L",
    "container": "1.0 L",
    "onhand_quantity": "489.5000 und",
    "reserved_quantity": "0.0000 und",
    "diff_quantity": "479.5000  und",
    "new_quantity": "10.0000  und",
    "new_unit_cost": "23.0000",
    "reason": "2",
    "reason_type": "Reducción"
  }
]
```
