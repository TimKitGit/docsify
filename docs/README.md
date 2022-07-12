This document describes the usage of the Toolzo API.

# Environments
There is one environment which can be used to test and production modes. This environment has two types of providers: test and production.  
All necessary credentials to your personal cabinet and API you can become by our manager.

The test provider calls MOCKGATE. When you are testing our API please use it. For the test provider you can add test terminal. All transactions during this terminal WILL NOT bring a real financial impact. This terminal is used only to simulate and test different payment scenarios.  
For the production mode you need to use real providers and real terminals.  
# Connect to our API
The process of connecting to our api contains the following steps   
![Connection process](images/connection_process.png "Connection process")

## First step "Become credentials for Personal cabinet"
You need to become credentials to your personal cabinet by our support team (e-mail: support@toolzo.com).

## Second step "Create website"
You need to [create new website](pers_cab_website_creation.md#new-api-connection) and generate API credentials in your personal cabinet.

## Third step "Add terminals(s)"
You need to [add provider's terminals](pers_cab_add_terminal.md#new-terminal-connection) through which you'll make transactions in your personal cabinet.    

## Fourth step "Add route(s)"
You need to [add routes](pers_cab_route_creation.md) which will be used to route customers transactions.
>:bulb: To add routes you need to have active terminals.

# Fifth step "Realize interaction protocol"
Our interaction protocol is implemented as a nested container with three levels: 
- Transport&Authorization Level
- Message Purpose Level
- Data Level

More details about realization our interaction protocol on your side you can find [here](interaction_protocol.md)

# Fifth step "Realize API methods"
More details about realization API methods you can find [here](api/api.md)
