xquery version "3.1";

module namespace accueil="http://localhost:8080/exist/apps/projet-final/accueil";

declare function accueil:Accueil($node-tree as node()*, $stylesheet as item()){
    let $input := doc("/db/apps/projet-final/data/Accueil.xml")
    let $xsl := doc("/db/apps/projet-final/data/ConvertAccueil.xsl")
    return transform:transform($input, $xsl, ())
    
};