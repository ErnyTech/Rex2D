module rex2d.request;

import rex2d.languages;

public class Request {
    private Languages LanguageChoice = Languages.NONE; 
    private string Program;
    private string Input;
    private string CompilerArgs;
    
    public Request language(Languages language) {
        this.LanguageChoice = language;
        return this;
    }
    
    public Request program(string program) {
        this.Program = program;
        return this;
    }
    
    public Request input(string input) {
        this.Input = input;
        return this;
    }
    
    public Request compilerArgs(string compilerArgs) {
        this.CompilerArgs = compilerArgs;
        return this;
    }
    
    public Languages getLanguage() {
        return this.LanguageChoice;
    }
    
    public string getProgram() {
        return this.Program;
    }
    
     public string getInput() {
        return this.Input;
    }
     
      public string getCompilerArgs() {
        return this.CompilerArgs;
    }
}