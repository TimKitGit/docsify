# Interaction Protocol
Here you can find information about our interaction protocol.
Our API interaction protocol is implemented as a nested container with three levels:
- [Transport&Authorization Level](#Transport-Level) This level contains authorization data and is configured depending on the selected data transfer protocol.
- [Message Purpose Level](#Message-Purpose-Level) This level contains information about the purpose of the message (our system supports several [message types](message_types.md))
- [Data Level](#Data-Level) This level contains information about the business content of the message.


![Layers](images/layers.png "Layers")

To interact with the system is used HTTP protocol.  
The payment API accepts HTTP POST JSON data and returns JSON data.  
Connections are always secured via SSL both in test and production mode. Be sure to set Content-type: application/json in your headers.
For access to our test and production API you need to have **API Key** and **Secret** for every account (website).
> :bulb: **ApiKey** and **hmacKey** you can become in your [Personal Cabinet](pers_cab_website_creation.md)

## Transport Level

Transport level has next parameters:

| Parameter                            | Required     | Type       | Description                                             |
|--------------------------------------|--------------|------------|---------------------------------------------------------|
| ApiKey                               | required     | string     | Merchant's website API Key                              |
| Payload                              | required     | b64string  | [Message Purpose Level Payload](#Message-Purpose-Level) |
| [Signature](signatur_alghoritm.md)   | required     | b64string  | Message signature                                       |
| Encrypted                            | not required | bool       | Flag that the message is encrypted                      |
| EncryptedKey                         | not required | b64string  | Secret                                                  |
| AuthenticationTag                    | not required | b64string  | Authentication tag                                      |

> :bulb: You need to use the special [signature construction algorithm](signatur_alghoritm.md).

## Message Purpose Level

Message Purpose Level has next parameters:

| Parameter           | Required     | Type      | Description                                                                       |
|---------------------|--------------|-----------|-----------------------------------------------------------------------------------|
| Type                | required     | string    | [Message Type](message_types.md#message-types)                                    |
| CorrelationId       | required     | string    | Unique message identifier, use it for socket connections. By HTTP enter any value |
| TTL*                | not required | Timespan  | Message time in ISO 8601 format ````"00:02:00"````                                |
| ExecutionDuration** | required     | Timespan  | Request execution time in ISO 8601 format ````"00:02:00"````                      |
| Payload             | required     | object    | [Data Level](#Data-Level) Payload                                                 |

**TTL** - optional parameter can be present only in Request type messages, lifetime of the message if it gets into the queue.   
**Execution duration** - optional parameter can be present only in Response type messages
````
Timespan Format "h:m:s", where:
- h - Number of hours in the range from "0" to "23"
- m - Number of minutes in the range from "00" to "59"
- s - The number of seconds in the range from "00" to "59"
````


## Data Level
Data level payload depends on [message Type](message_types.md#message-types)

## Example
**Secret:**
````
Ea/Xgv1VsNKapLPx8I9yvxN3TjpnBankwkKjh/GVLo7DP3rVNxTWf9qUJOUuo7uFLQhs9Z9XZA1sAc0GDt2NAw==
````
**Base data**
````JSON
{
  "Type": "Request",
  "CorrelationId": "f8c04bbe-4303-4bb3-929e-7a473aa5e3aa",
  "TimeStamp": "2021-06-04T16:05:37+03:00",
  "TTL": "00:00:45",
  "Payload": {
    "Type": "test",
    "Priority": "Normal",
    "Payload": {
      "ExtId": "test",
      "MD": "test"
    }
  }
}
````

**Prepared request**
````JSON
{
  "ApiKey": "8ea2f7108d294bbc9d4db34ec0d31976",
  "Payload": "eyJUeXBlIjoiUmVxdWVzdCIsIkNvcnJlbGF0aW9uSWQiOiJmOGMwNGJiZS00MzAzLTRiYjMtOTI5ZS03YTQ3M2FhNWUzYWEiLCJUaW1lU3RhbXAiOiIyMDIxLTA2LTA0VDE2OjA1OjM3KzAzOjAwIiwiVFRMIjoiMDA6MDA6NDUiLCJQYXlsb2FkIjp7IlR5cGUiOiJ0ZXN0IiwiUHJpb3JpdHkiOiJOb3JtYWwiLCJQYXlsb2FkIjp7IkV4dElkIjoidGVzdCIsIk1EIjoidGVzdCJ9fX0=",
  "Signature": "8WjXqlpOIzGk0Prpod97pGaiNTM="
}
````
