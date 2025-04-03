import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /hello on httpDefaultListener {
    resource function get greeting() returns error|json|http:InternalServerError {
        do {
            string epResponse = check externalEP->get("/zvdz/mi-qsg/v1.0");
            return epResponse;
        } on fail error err {
            // handle error
            return error("Not implemented", err);
        }
    }
}
