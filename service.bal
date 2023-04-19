
import ballerina/http;
import ballerina/log;


service / on new http:Listener(9090) {


    resource function get tokenProcess(http:Request req) returns string|error {

        string xjwt = check req.getHeader("x-jwt-assertion");
        log:printInfo("x-jwt-assertion: " + xjwt);
        return xjwt;

    }
}