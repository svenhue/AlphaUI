---
to: <%=filepath%><%=filename%>
---

<template>

</template>


<script setup lang="ts">
<% if(typeof usehead == 'string'){ -%>
    import { useHead } from 'unhead'

    useHead([
        <% if(typeof title == 'string'){ -%>
            'title': title,
        <% } -%>

        


        <% if(typeof usemeta == 'string'){ -%>
            meta: [
                <% if(typeof description == 'string'){ -%>
                    { name: 'description', content: description },
                <% } -%>

                <% if(typeof keywords == 'string'){ -%>
                    { name: 'keywords', content: keywords },
                <% } -%>

                <% if(typeof charset == 'string'){ -%>
                    { charset: charset },
                <% } -%>

                <% if(typeof subject == 'string'){ -%>
                    { name: 'subject', content: subject },
                <% } -%>

                <% if(typeof copyright == 'string'){ -%>
                    { name: 'copyright', content: copyright },
                <% } -%>

                <% if(typeof language == 'string'){ -%>
                    { name: 'language', content: language },
                <% } -%>

                <% if(typeof robots == 'string'){ -%>
                    { name: 'robots', content: robots },
                <% } -%>

                <% if(typeof revised == 'string'){ -%>
                    { name: 'revised', content: revised },
                <% } -%>

                <% if(typeof abstract == 'string'){ -%>
                    { name: 'abstract', content: abstract },
                <% } -%>

                <% if(typeof topic == 'string'){ -%>
                    { name: 'topic', content: topic },
                <% } -%>

                <% if(typeof summary == 'string'){ -%>
                    { name: 'summary', content: summary },
                <% } -%>

                <% if(typeof Classification == 'string'){ -%>
                    { name: 'Classification', content: Classification },
                <% } -%>

                <% if(typeof author == 'string'){ -%>
                    { name: 'author', content: author },
                <% } -%>

                <% if(typeof designer == 'string'){ -%>
                    { name: 'designer', content: designer },
                <% } -%>

                <% if(typeof replyto == 'string'){ -%>
                    { name: 'reply-to', content: replyto },
                <% } -%>

                <% if(typeof owner == 'string'){ -%>
                    { name: 'owner', content: owner },
                <% } -%>

                <% if(typeof url == 'string'){ -%>
                    { name: 'url', content: url },
                <% } -%>

                <% if(typeof identifierURL == 'string'){ -%>
                    { name: 'identifier-URL', content: identifierURL },
                <% } -%>

                <% if(typeof directory == 'string'){ -%>
                    { name: 'directory', content: directory },
                <% } -%>

                <% if(typeof pagename == 'string'){ -%>
                    { name: 'pagename', content: pagename },
                <% } -%>

                <% if(typeof category == 'string'){ -%>
                    { name: 'category', content: category },
                <% } -%>

                <% if(typeof coverage == 'string'){ -%>
                    { name: 'coverage', content: coverage },
                <% } -%>

                <% if(typeof distribution == 'string'){ -%>
                    { name: 'distribution', content: distribution },
                <% } -%>

                <% if(typeof rating == 'string'){ -%>
                    { name: 'rating', content: rating },
                <% } -%>

                <% if(typeof revisitafter == 'string'){ -%>
                    { name: 'revisit-after', content: revisitafter },
                <% } -%>

                <% if(typeof subtitle == 'string'){ -%>
                    { name: 'subtitle', content: subtitle },
                <% } -%>

                <% if(typeof target == 'string'){ -%>
                    { name: 'target', content: target },
                <% } -%>

                <% if(typeof HandheldFriendly == 'string'){ -%>
                    { name: 'HandheldFriendly', content: HandheldFriendly },
                <% } -%>

                <% if(typeof MobileOptimized == 'string'){ -%>
                    { name: 'MobileOptimized', content: MobileOptimized },
                <% } -%>

                <% if(typeof date == 'string'){ -%>
                    { name: 'date', content: date },
                <% } -%>

                <% if(typeof search_date == 'string'){ -%>
                    { name: 'search_date', content: search_date },
                <% } -%>

                <% if(typeof DCtitle == 'string'){ -%>
                    { name: 'DC.title', content: DCtitle },
                <% } -%>

                <% if(typeof ResourceLoaderDynamicStyles == 'string'){ -%>
                    { name: 'ResourceLoaderDynamicStyles', content: ResourceLoaderDynamicStyles },
                <% } -%>

                <% if(typeof medium == 'string'){ -%>
                    { name: 'medium', content: medium },
                <% } -%>

                <% if(typeof syndicationsource == 'string'){ -%>
                    { name: 'syndication-source', content: syndicationsource },
                <% } -%>

                <% if(typeof originalsource == 'string'){ -%>
                    { name: 'original-source', content: originalsource },
                <% } -%>

                <% if(typeof verifyv1 == 'string'){ -%>
                    { name: 'verify-v1', content: verifyv1 },
                <% } -%>

                <% if(typeof y_key == 'string'){ -%>
                    { name: 'y_key', content: y_key },
                <% } -%>

                <% if(typeof pageKey == 'string'){ -%>
                    { name: 'pageKey', content: pageKey },
                <% } -%>

                <% if(typeof itempropname == 'string'){ -%>
                    { itemprop: 'name', content: itempropname },
                <% } -%>

                <% if(typeof httpEquivExpires == 'string'){ -%>
                    { 'http-equiv': 'Expires', content: httpEquivExpires },
                <% } -%>

                <% if(typeof httpEquivPragma == 'string'){ -%>
                    { 'http-equiv': 'Pragma', content: httpEquivPragma },
                <% } -%>

                <% if(typeof httpEquivCacheControl == 'string'){ -%>
                    { 'http-equiv': 'Cache-Control', content: httpEquivCacheControl },
                <% } -%>

                <% if(typeof httpEquivImagetoolbar == 'string'){ -%>
                    { 'http-equiv': 'imagetoolbar', content: httpEquivImagetoolbar },
                <% } -%>

                <% if(typeof httpEquivXDnsPrefetchControl == 'string'){ -%>
                    { 'http-equiv': 'x-dns-prefetch-control', content: httpEquivXDnsPrefetchControl },
                <% } -%>
            ],
        <% } -%>
    ])
<% } -%>
</script>


