import ballerina/http;

final http:Client externalEP = check new ("https://apis.wso2.com");
