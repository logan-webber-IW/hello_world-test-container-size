# ***Ballerina Template:***

***`Ballerina home page`***: https://ballerina.io/ 
<br/>

***`Ballerina docks:`*** https://lib.ballerina.io/

## ***Start Template:***
*Must be ran/built within in the folder of tempalte.*
- `bal build`   -> Builds docker container of the project
- `bal run`     -> Runs an instance of the project

## ***Template Explained:***

### Modules:
This folder contains the Modules used inside of the Ballerina Program. Contains a single example module. Relates to the config.toml so you can see how to use configurables if you are splitting your code out into modules.

### Ballerina.toml:
Main configuration file. Has build options and project details (these are important Ballerina uses them to reference the building the project and configurable locations).

### Cloud.toml:
Used to define how the conguration of the ballerina project building to a image.
More information: `https://ballerina.io/learn/user-guide/deployment/code-to-cloud/`

### Config.toml:
Used to define variables that are set as configurables. You can also declare these configurables/over write the config.toml using start up arguments.
More information: `https://ballerina.io/learn/user-guide/configurability/defining-configurable-variables/`

### Depedencies.toml:
Can depedency lock imports for modules. This means if a new version is released it won't be updated. If the module is still in alpha this lock my fail.
More information: `https://ballerina.io/learn/user-guide/ballerina-packages/dependencies/`

### Main.bal
This is where the Ballerina program is run from. This ballerina file imports and utilises the code inside of other modules as well.