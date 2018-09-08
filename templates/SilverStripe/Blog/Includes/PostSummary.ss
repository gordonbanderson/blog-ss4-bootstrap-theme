<article>
    <div class="row">
        <div class="span8">
            <div class="post-image">
                <div class="post-heading">
                    <h3><a href="#">$Title</a></h3>
                </div>
                <img class="img-fluid rounded" src="$FeaturedImage.FocusFillMax(750,500).URL"
                     alt="Image for blog post $Title">
            </div>
            <p>
                Qui ut ceteros comprehensam. Cu eos sale sanctus eligendi, id ius elitr saperet, ocurreret pertinacia pri an. No mei nibh consectetuer, semper laoreet perfecto ad qui, est rebum nulla argumentum ei. Fierent adipisci iracundia est ei, usu timeam persius
                ea. Usu ea justo malis, pri quando everti electram ei, ex homero omittam salutatus sed.
            </p>

            <div class="bottom-article">
                <% include SilverStripe\\Blog\\EntryMeta For='blog' %>
            </div>
        </div>
    </div>
</article>


<div class="card mb-4">
    <img class="img-fluid rounded" src="$FeaturedImage.FocusFillMax(750,500).URL"
         alt="Image for blog post $Title">
    <div class="card-body">
        <h2>
            <a href="$Link" title="<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>">
                <% if $MenuTitle %>$MenuTitle
                <% else %>$Title<% end_if %>
            </a>
        </h2>
        <% if $Summary %>
            $Summary
        <% else %>
            <p class="card-text">$Excerpt</p>
        <% end_if %>

        <a href="$Link" class="btn btn-primary pull-right">
            <%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}' &rarr;" title=$Title %>
        </a>
    </div>
    <div class="card-footer text-muted">
        <% include SilverStripe\\Blog\\EntryMeta For='blog' %>
    </div>
</div>

