<?xml version="1.0"?>
<recipe>
 
    <instantiate 
    	from="src/app_package/Interface.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}.kt" />

    <instantiate 
    	from="src/app_package/Model.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}Model.kt" />

    <instantiate 
    	from="src/app_package/Presenter.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />

    <instantiate 
    	from="src/app_package/Action.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}Action.kt" />

    <instantiate 
    	from="src/app_package/Reducer.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/${className}Reducer.kt" />

    <open file="${srcOut}/${className}Interface.kt"/>

</recipe>