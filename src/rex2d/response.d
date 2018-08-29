module rex2d.response;

import std.json;

public class Response {
    private string Result;
    private string Warnings;
    private string Errors;
    private string Stats;
    private string File;
    
    public this(string json) {
        auto jsonValue = parseJSON(json);
        
        if ("Result" in jsonValue && jsonValue["Result"].type == JSON_TYPE.STRING) {
            this.Result = jsonValue["Result"].str;
        }
        
        if ("Warnings" in jsonValue && jsonValue["Warnings"].type == JSON_TYPE.STRING) {
            this.Warnings = jsonValue["Warnings"].str;
        }
        
        if ("Errors" in jsonValue && jsonValue["Errors"].type == JSON_TYPE.STRING) {
            this.Errors = jsonValue["Errors"].str;
        }
        
        if ("Stats" in jsonValue && jsonValue["Stats"].type == JSON_TYPE.STRING) {
            this.Stats = jsonValue["Stats"].str;
        }
        
        if ("File" in jsonValue && jsonValue["File"].type == JSON_TYPE.STRING) {
            this.File = jsonValue["File"].str;
        }
    }
    
    public string getResult() {
        return this.Result;
    }
    
    public string output() {
        return getResult();
    }
    
    public string getWarnings() {
        return this.Warnings;
    }
    
    public string getErrors() {
        return this.Errors;
    }
    
    public string getStats() {
        return this.Stats;
    }
    
    public string getFile() {
        return this.File;
    }
}