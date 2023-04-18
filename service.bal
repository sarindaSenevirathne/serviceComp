import ballerina/http;


service / on new http:Listener(8090) {

    resource function get .() returns json|error {
        
        return {"message":"Hi"};
    }
}
