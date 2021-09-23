import ballerina/http;
import abstractFactory.HttpFactory as Factory;

service / on new http:Listener(9090) {
     resource function post content(http:Request request) returns string {
          Factory:Application|error responseHandler = Factory:createHttpApplication(request);
          if(responseHandler is Factory:Application) {
               responseHandler.printRequest(request);
               responseHandler.handleRequest(request);
          } else {
               return "invalid content type";
          }
          return "";
     }
}