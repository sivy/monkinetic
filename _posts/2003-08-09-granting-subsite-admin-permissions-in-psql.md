Slug: granting-subsite-admin-permissions-in-psql
Date: 2003-08-09
Title: Granting Subsite Admin Permissions in psql
layout: post

Sometimes we need to grant admin permissions for a subsite to a group or member. Right now the groups admin pages are horked, and you have to do it via <code>psql</code>.

Find the packge_id of the subsite, and the id of the user or group that you want to have admin permissions. Then run <code>psql</code> and run this query:

<code>select acs_permission__grant_permission(subsite_package_id, party_id,&#39;admin&#39;);</code>
