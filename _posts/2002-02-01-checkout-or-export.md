Slug: checkout-or-export
Date: 2002-02-01
Title: Checkout or Export?
layout: post

CVS question: when doing a checkout for the purpose of building a project on a testing platform, is it preferred to do a <code>checkout</code>, and ignore the CVS files that come along, or an explicit <code>export</code> to get only the source?<p>
I think for testing purposed (we&#39;ll run this a lot more than deployment) <code>checkout</code> will work - I&#39;d rather not have to be limited to a particular tag or date, I only want the most recent. But I&#39;m open to solutions to this problem.</p>
