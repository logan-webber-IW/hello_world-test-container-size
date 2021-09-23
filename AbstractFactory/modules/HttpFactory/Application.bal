import ballerina/http;

public class Application {
    private Factory factory;
    private RequestHandler requestHandler;
    
    function init(Factory factory){
        self.factory = factory;
        self.requestHandler = self.factory.createRequestHandler();
    }

    public function handleRequest(http:Request request) {
        self.requestHandler.handleRequest(request);
    }
    
    public function printRequest(http:Request request) {
        self.requestHandler.printRequest(request);
    }
}

public function createHttpApplication(http:Request request) returns Application|error {
    if(request.getContentType() == "application/json"){
        return new Application(new JSONHTTPFactory());
    } else if (request.getContentType() == "application/xml"){
        return new Application(new XMLHTTPFactory());
    } else {
        return error("Error - Unsupported/no content type provided");
    }
}