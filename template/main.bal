import ballerina/http;
import template.exampleModule;

configurable string message = ?;
int port = 9090;

service / on new http:Listener(port) {
    resource function get getResource() returns string{
        string package = message + " " + exampleModule:getName();
        return package;
    } 
}