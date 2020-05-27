# Client

Please implement your client applications in this directory

You should implement the following applications by using either of Java or Javascript

## Application: createCounter
1. Description
- The application issues the createCounter transaction

2. Arguments of the Application
- first argument: the name of the counter to be created
- second argument: the type of the counter
- third argument: the initial value of the counter

3. Name of the Application
- NodeJS: createCounter.js 
- Java: CreateCounter.java

## Application: updateCounter
1. Description
- The application issues the updateCounter transaction

2. Arguments of the Application
- first argument: the name of the counter

3. Name of the Application
- NodeJS: updateCounter.js
- Java: UpdateCounter.java

## Application: readCounter
1. Description:
- The application issues the readCounter transaction

2. Arguements of the Application
- first argument: the name of the counter

3. Name of the Application
- NodeJS: readCounter.js
- Java: ReadCounter.java

4. Console Print
- The application should print the result on the console in the following form.
- name: &lt; counter name &gt;, value: &lt; counter value &gt;
- Example) When we execute "node readCounter.js counter", it should only print "name: counter, value: 5" (assuming the current value of the counter is 5)
