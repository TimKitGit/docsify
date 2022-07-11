# Statuses
## Transaction statuses

| Status name          |Type| Description                                                                                   |
|---------------------|-|-----------------------------------------------------------------------------------------------|
| New                  |Interim Status| The initial status for all operations                                                         |
| GetAcs               |Interim Status| The transaction process requires the customer to complete the ACS* procedure. (Has been sent a link to pass the ACS authorization)                 |
| InProcess            |Interim Status| The operation is in progress |
| Canceled             |End Status| The operation is canceled|
| Completed            |End Status| The operation is completed|
| PartialRefunded      |Synthetic Status| The transaction is partial refunded|
| FullyRefunded        |Synthetic Status| The transaction is fully refunded|   

*ACS - access control server. Read more about [3-D Secure](https://en.wikipedia.org/wiki/3-D_Secure#ACS_providers)

[Go back to Introduction](readme.md#environments)