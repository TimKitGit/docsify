# Transport&Authorization Level
To interact with the system is used HTTP protocol.  
The payment API is asynchronous, it accepts HTTP POST JSON data and returns JSON data.  
Connections are always secured via SSL both in test and production mode. Be sure to set Content-type: application/json in your headers. 
For access to our test and production API you need to have **API Key** and **Secret** for every account (website).    
> :bulb: **ApiKey** and **hmacKey** you can become in your [Personal Cabinet](pers_cab_website_creation.md) 

## First step: Authorization
The first step in interacting with our API should be to call the authorization method. You need to use the special [signature construction algorithm](signatur_alghoritm.md). 

```HTTP
{
/// идентификатор ключа клиента
"ApiKey":"string",
/// Общее сообщение закодированное в b64
"Payload":"b64string",
/// подпись сообщения в b64
"Signature":"b64string",
/// признак, что сообщение зашифровано
"Encrypted":"bool",
/// ключ шифрования
"EncryptedKey":"b64string",
/// тег проверки подлинности
"AuthenticationTag":"b64string"
}
```