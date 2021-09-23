import ballerina/io;

type Factory object {
    function createPrinter() returns Printer;
};

class XMLFactory {
    *Factory;

    function createPrinter() returns Printer {
        return new XMLPrinter();
    }
}

class JSONFactory {
    *Factory;

    function createPrinter() returns Printer {
        return new JSONPrinter();
    }
}

type Printer object {
    function print();
};

class XMLPrinter {
    *Printer;
    
    function print() {
        io:println("I am XML Printer");
    }
}

class JSONPrinter {
    *Printer;
    
    function print() {
        io:println("I am JSON Printer");
    }
}

class Application {
    private Factory factory;
    private Printer printer;
    
    function init(Factory factory){
        self.factory = factory;
        self.printer = self.factory.createPrinter();
    }

    function print() {
        self.printer.print();
    }
}

public function main() {
    //Change this to read from config
    boolean jsonMode = false;

    if(jsonMode){
        bootApplication(new JSONFactory()); 
    } else  {
        bootApplication(new XMLFactory());
    } //Add exception here for unrecgonized config
}


function bootApplication(Factory factory) {
    Application applicaton = new Application(factory);

    applicaton.print();
}

