# Message types available in the system

| Message type | Description                              |
|--------------|------------------------------------------|
| Request      | request to perform some service method   |
| Response     | service response                         | 
| Error        | server response in case of service error |

## Request
```
{
/// Request type
    "Type":"string",
/// Business content
    "Payload":"object",
/// Priority (not required)
    "Priority":"string"
}
```

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
```
{
/// Request processing result code
    "ResultCode":"string",
/// Result object 
    "Result":"object",
/// Request processing result error (If the request resulted in an error)
    "Error":"Error"
}
```

## Error
```
{
/// Error 
    "Code":"string",
/// Error description
    "Message":"string"
}
```