export function camelcaseToUnderscore(camelcase:String):String{
    let s  = camelcase;
    return s.replace(/\.?([A-Z]+)/g, (x,y)=>{return "_" + y.toLowerCase()}).replace(/^_/, "")
}