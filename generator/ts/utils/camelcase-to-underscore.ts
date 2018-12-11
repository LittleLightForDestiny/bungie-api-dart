export function camelcaseToUnderscore(camelcase:string):string{
    let s  = camelcase;
    return s.replace(/\.?([A-Z]+)/g, (x,y)=>{return "_" + y.toLowerCase()}).replace(/^_/, "")
}