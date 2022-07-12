# Message types

| Message type | Description                              |
|--------------|------------------------------------------|
| Request      | request to perform some service method   |
| Response     | service response                         | 
| Error        | server response in case of service error |

## Request
**Payload structure**

| Parameter | Required     | Type   | Description                                          |
|-----------|--------------|--------|------------------------------------------------------|
| Type      | required     | string | [Request type](#Request-types)                       |
| Payload   | required     | object | Business content depends on [API Method](api/api.md) |
| Priority  | not required | string | [Operation priority](#Priorities)                    |

### Request types
- Pay
- Payout
- Refund
- Reversal
- P2P

### Priorities
 - Low
 - Normal
 - High


## Response

**Payload structure**

| Parameter                        | Required     | Type            | Description                                                            |
|----------------------------------|--------------|-----------------|------------------------------------------------------------------------|
| ResultCode                       | required     | string          | Request processing result code                                         |
| Result object                    | not required | object          | Result object depends on [API Method](api/api.md)                      |
| Request processing result error  | not required | [Error](#Error) | Request processing result error (If the request resulted in an error)  |


## Error
**Error DTO Structure**

| Parameter   | Required     | Type   | Description       |
|-------------|--------------|--------|-------------------|
| Code        | required     | string | Error code        |
| Description | not required | string | Error Description |

[Go back to Interaction Protocol](interaction_protocol.md#message-purpose-level)
