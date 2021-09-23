import ballerina/io;
import ballerina/http;

//Factory Interface
type Factory object {
    function createRequestHandler() returns RequestHandler;
    // function createResponseHandler() returns ResponseHandler;
    // function createPraser() returns Parser;
};

class JSONHTTPFactory {
    *Factory;

    function createRequestHandler() returns RequestHandler {
        return new JSONRequestHandler();
    }
}

class XMLHTTPFactory {
    *Factory;

    function createRequestHandler() returns RequestHandler {
        return new XMLRequestHandler();
    }
}


//Request Handler Interface
type RequestHandler object {
    function handleRequest(http:Request request);
    function printRequest(http:Request request);
};

//Request Handler Class
class JSONRequestHandler {
    *RequestHandler;

    function handleRequest(http:Request request) {
        json|http:ClientError payload = request.getJsonPayload();
        if(payload is json){
            io:println("Payload is json");
        }
    }

    function printRequest(http:Request request) {
        io:println(request.getJsonPayload());
    }
}

//Request Handler Class
class XMLRequestHandler {
    *RequestHandler;
    
    function handleRequest(http:Request request) {
        xml|http:ClientError payload = request.getXmlPayload();
        if(payload is xml){
            io:println("Payload is xml");
        }
    }

    function printRequest(http:Request request) {
        io:println(request.getXmlPayload());
    }
}
