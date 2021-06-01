xquery version "3.1";

module namespace display="http://localhost:8080/exist/apps/projet-final/display";

declare function display:afficheBible1($node-tree as node()*, $stylesheet as item()){
    let $input := (
        doc("/db/apps/projet-final/data/bible-1.xml")
        )
    let $xsl := doc("/db/apps/projet-final/data/ConvertDisplay.xsl")
    return transform:transform($input, $xsl, ())
};

declare function display:afficheBible2($node-tree as node()*, $stylesheet as item()){
    let $input := (
        doc("/db/apps/projet-final/data/bible-2.xml")
        )
    let $xsl := doc("/db/apps/projet-final/data/ConvertDisplay.xsl")
    return transform:transform($input, $xsl, ())
};

declare function display:afficheBible3($node-tree as node()*, $stylesheet as item()){
    let $input := (
        doc("/db/apps/projet-final/data/bible-3.xml")
        )
    let $xsl := doc("/db/apps/projet-final/data/ConvertDisplay.xsl")
    return transform:transform($input, $xsl, ())
};

declare function display:afficheBible4($node-tree as node()*, $stylesheet as item()){
    let $input := (
        doc("/db/apps/projet-final/data/bible-4.xml")
        )
    let $xsl := doc("/db/apps/projet-final/data/ConvertDisplay.xsl")
    return transform:transform($input, $xsl, ())
};

declare function display:afficheBible5($node-tree as node()*, $stylesheet as item()){
    let $input := (
        doc("/db/apps/projet-final/data/bible-5.xml")
        )
    let $xsl := doc("/db/apps/projet-final/data/ConvertDisplay.xsl")
    return transform:transform($input, $xsl, ())
};