# Chaincode

Please implement your chaincode in this directory

You should implement the following transactions:

## Transaction: createCounter(name, type, number)
1. Description
- This transaction is used to create the counter

2. Argument
- name: the name of the counter 
- type: "up" or "down"
- number: the initial number

3. Return Value
- nothing

## Transaction: updateCounter(name)
1. Description
- This transaction is used to update the counter by increasing/decreasing by one
- If the type of the counter is "up", the value of the counter would be increased by one
- Otherwise, the value of the counter would be decreased by one
- You do not need to care of the maximum/minimum value of the counter

2. Argument
- name: the name of the counter

3. Return Value
- nothing


## Transaction: readCounter(name)
1. Description
- This transaction is used to read the counter with the name

2. Argument
- name: the name of the counter

3. Return Value
- the JSON object with the name (String) and the value (Integer) of the counter

## Example
1. First Example
- createCounter("counter", "up", "0") 
- updateCounter("counter")
- readCounter("counter"): { "name": "counter", "value": 1 }

2. Second Example
- createCounter("counter", "down", "10")
- updateCounter("counter")
- updateCounter("counter")
- readCounter("counter"): { "name": "counter", "value": 8 }
