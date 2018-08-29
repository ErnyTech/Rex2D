module rex2d.executor;

import std.net.curl;
import std.conv;
import std.string;
import rex2d.languages;
import rex2d.request;
import rex2d.response;

const string rexUrl = "http://rextester.com/rundotnet/api";

public Response execute(Request request) {
    auto postDict = generatePostDict(request);
    auto json = to!string(post(rexUrl, postDict));
    auto response = new Response(json);
    return response;
}

private string[string] generatePostDict(Request request) {
    string[string] postDict;
    assert(request.getLanguage != Languages.NONE, "language of Request can't be null");
    assert(request.getProgram != null, "Program of Request can't be null");
    postDict["LanguageChoice"] = format("%d", request.getLanguage);
    postDict["Program"] = request.getProgram;
    
    if (request.getInput != null) {
        postDict["Input"] = request.getInput;
    }
    
    if (request.getCompilerArgs != null) {
        postDict["CompilerArgs"] = request.getCompilerArgs;
    }
    
    return postDict;
}
