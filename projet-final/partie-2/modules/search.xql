xquery version "3.1";

module namespace search="http://localhost:8080/exist/apps/projet-final/search";

import module namespace config="http://localhost:8080/exist/apps/projet-final/config" at "config.xqm";
import module namespace kwic="http://exist-db.org/xquery/kwic";

declare function search:cherche-mot($node as node(), $model as map(*)) {
    let $query := request:get-parameter("querySearch", ())
    let $path := concat($config:app-root, "/data/")
    
   return if ($query) then
       <p>Running... : {
           for $document in collection ($path)
           for $match in $document/tmx/body/tu/tuv/seg/hi[ft:query(., $query)]
           order by ft:score($match) descending
           return kwic:summarize($match, <config width="40"/>)
       }</p>
       else()
};  

