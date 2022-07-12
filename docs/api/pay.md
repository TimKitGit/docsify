# Pay
The method allows to pay with a card

## Request
### Request parameters
Request body schema: application/json

| Parameter              | Required  | Type           | Description                                                                           |
|------------------------|-----------|----------------|---------------------------------------------------------------------------------------|
| ExtId                  | required  | string         | Merchant's unique transaction ID                                                      |
| Amount                 | required  | integer<int64> | Amount indicated in minimum currency units                                            |
| ReturnUrl              | required  | string         | Url address to which the customer will be redirected after the operation is completed |
| Description            | required  | string         | Operation description                                                                 |
| Currency               | required  | string         | Operation currency, three characters  (ISO 4217)                                      |
| [CardInfo](api/dto.md) | required  | object         | Information about Customer's Card                                                     |

### Example
```JSON
{
  "ExtId": "new_T_2",
  "Amount": 158700,
  "ReturnUrl": "https://your-return-url.com",
  "Description": "Your test payment",
  "Currency": "USD",
  "CardInfo": {
    "CardNumber": "4111111111111111",
    "CardHolder": "CARDHOLDER",
    "ExpirationYear": "2024",
    "ExpirationMonth": "12",
    "Cvv": "736"
  }
}
```

## Response

**200 Successful operation**    
Response body schema: application/json

| Parameter              | Required  | Type    | Description                                                                |
|------------------------|-----------|---------|----------------------------------------------------------------------------|
| OrderId                | required  | string  | System's unique operation ID                                               |
| PaymentUrl             | required  | string  | Url address where the customer needs to go to continue the payment process |
### Example
```JSON
{
  "OrderId": 3694,
  "PaymentUrl": "https://next-step-operation-url.com"
}
```

<a href="api/Pay.yml" download>Download in YAML format</a>


[Go back to API Methods](api/api.md)