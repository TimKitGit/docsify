# Errors List

| Code                         | Description                                                                                               |
|------------------------------|-----------------------------------------------------------------------------------------------------------|
| ValidationFailed             | Incoming request validation error                                                                         |
| InternalError                | Internal system error                                                                                     |
| ExternalError                | External system error (if needed to request an external system to perform the operation)                  |
| Obsolete                     | method is deprecated                                                                                      |
| InsufficientPermission       | Not enough rights                                                                                         |
| InvalidApiKey                | API key not found or invalid API key                                                                      |
| ApiKeyIsBlocked              | API key is blocked                                                                                        |
| UserNotFound                 | The user is not found                                                                                     |
| UserIsBlocked                | The user is blocked                                                                                       |
| EncryptionNotSupported       | Encryption is not supported (for Shared keys)                                                             |
| EncryptionRequired           | Encryption is required (for RSA keys)                                                                     |
| DecodeError                  | Transport level message processing error                                                                  |
| DecryptionError              | Decryption message error                                                                                  |
| InvalidMessageSignature      | Invalid message signature                                                                                 |
| InvalidRequest               | Transport level message structure error                                                                   |
| InvalidMessageType           | Invalid message type                                                                                      |
| MethodNotAvailable           | Method is not available                                                                                   |
| MethodNotResponding          | Method response timed out                                                                                 |
| InternalServerError          | Internal Server Error (Server is not available)                                                           |
| ActionDenied                 | Action denied                                                                                             |
| AlreadyRegistered            | The operation is already registered                                                                       |
| AttributeError               | Required message parameters not specified                                                                 |
| AuthEntityNotFound           | Entity is not found                                                                                       |
| CurrenciesError              | Currency is not found                                                                                     |
| CurrencyNotSpecified         | Currency not specified                                                                                    |
| DataHasBeChanged             | Related transaction data has been changed                                                                 |
| Expired                      | Request or entity timed out                                                                               |
| GateNotConfigured            | Provider's gate settings not configured                                                                   |
| ImpossibleToRun              | Impossible to rerun the process                                                                           |
| InsufficientFunds            | Insufficient Funds                                                                                        |
| LoginAlreadyUsed             | Login is already used                                                                                     |
| NotActive                    | Entity is not active                                                                                      |
| NotConfigured                | Entity is not configured                                                                                  |
| NoTerminalsCanProcess        | No terminals to process the operation                                                                     |
| OperationExpire              | Operation timed out                                                                                       |
| OrderAlreadyExists           | The order with the specified external ID is already registered                                            |
| OrderInTransaction           | Transaction created from operation                                                                        |
| OrderIsBlocked               | Operation is blocked                                                                                      |
| OrderNotFound                | Operation is not found                                                                                    |
| PaymentLinkEntityNotFound    | Payment link is not found                                                                                 |
| PaymentRouteEntityNotFound   | Route is not found                                                                                        |
| ProviderEntityNotFound       | Provider is not found                                                                                     |
| ProviderNotConfigured        | Provider is not configured (contact support)                                                              |
| RetryLater                   | Retry operation later                                                                                     |
| SettingsNotFound             | Settings for operation are not found                                                                      |
| TemplateNotFound             | Template is not found                                                                                     |
| TerminalAccessEntityNotFound | Terminal permissions are not found                                                                        |
| TerminalDisabled             | Terminal is disabled                                                                                      |
| TerminalsNotAvailable        | Terminals are not available                                                                               |
| TerminalsNotFound            | Terminals are not available                                                                               |
| TokenExpire                  | Token expired                                                                                             |
| TokenNotFound                | Token is not found                                                                                        |
| UserAlreadyAuthenticated     | The user is already authenticated                                                                         |
| WrongAmount                  | The amount in an operation is not correct                                                                 |
| WrongAuthId                  | The parameters of the current and primary transactions do not match                                       |
| WrongPaymentMethod           | Invalid Payment Method                                                                                    |
| WrongValue                   | Invalid parameter value                                                                                   |
| BadRequest                   | Invalid request                                                                                           |
| CommunicationError           | Internal error caused by problems with the interaction of services within the system ((contact support) ) |


[Go back to Introduction](readme.md#environments)
