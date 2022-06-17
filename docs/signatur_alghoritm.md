# Signature construction algorithm
&nbsp;&nbsp;&nbsp;&nbsp;Please use AES 256 GCM to digitally sign requests. Encryption is only available when using RSA keys.    
To make requests to our API, you must have the following data:

**apiKey** - user key identifier for making requests to our API;    
**hmacKey** - user key secret (each apiKey has its own).    
> :bulb: These credentials you can become by our account manager 

When generating a signature, you must be guided by the following algorithm:

1. Form a main message in JSON format as a UTF-8 string;
2. Convert hmacKey from Base64 string to byte array;
3. Generate a signature using the HMAC algorithm based on the main message (1) and the secret (2);
4. Signature (3) turn into a Base64 string;
5. Specify the received signature (4) in the Signature field of the main message.

```JS example using CryptoJS library
// 1
payload = JSON.stringify(mainMessage);
// 2
secret = CryptoJS.enc.Base64.parse(hmacKey);
// 3
var hmac = CryptoJS.HmacSHA1(payload, secret);
// 4
var signature = CryptoJS.enc.Base64.stringify(hmac);
 
var httpMessage = {
   ApiKey:  apiKey,
   Payload: btoa(payload),
   Signature: signature // 5
};

```
