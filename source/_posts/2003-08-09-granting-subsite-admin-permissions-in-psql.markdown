---
title: "Granting Subsite Admin Permissions in psql"
layout: post
tp_urlid: "6a010534988cd3970b0120a5b35f4a970c"
tp_favoritecount: 0
tp_commentcount: 0
tp_permalink: "http://www.monkinetic.com/2003/08/granting-subsite-admin-permissions-in-psql.html"
---
Sometimes we need to grant admin permissions for a subsite to a group or member. Right now the groups admin pages are horked, and you have to do it via <code>psql</code>.

Find the packge_id of the subsite, and the id of the user or group that you want to have admin permissions. Then run <code>psql</code> and run this query:

<code>select acs_permission__grant_permission(subsite_package_id, party_id,&#39;admin&#39;);</code>
