import { spawn } from "child_process";
import { Generator } from "./Generator.ts";

// ts-node-esm generatePages.ts
export class PageGenerator extends Generator{

    
    constructor(){
        super();
    }

    public generate(){
        const pages = this.config.pages;
        
        for(const page of pages){
            console.log(page);
            if(!this.validatePage(page)){
                //todo log
                continue;
            }

            this.generatePageFile(page);
        }
    }

    public generatePageFile(page: any){
        const pagePath = this.createPagePath(page);
        const pageName = page.name + ".vue";
        
        var commands =  [];  
        commands.push('defaultpage');
        commands.push('new')
        commands.push(`--filepath '${pagePath}'`);
        commands.push(`--filename '${pageName}'`);
        var process = spawn('hygen', commands, {stdio: 'inherit' , shell: true});
        
    }
    private validatePage(page: any){
        return true;
    }

    private createPagePath(page: any){
        let path = this.rootPath;

        if(page.domain != undefined){
            path += page.domain + "/pages/";
        }else{
            path += "CustomPages/pages/";
        }
        return path;
    }
}