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
                <ul class="meta-post">
                    <li><i class="icon-calendar"></i><a href="#"> Mar 23, 2013</a></li>
                    <li><i class="icon-user"></i><a href="#"> Admin</a></li>
                    <li><i class="icon-folder-open"></i><a href="#"> Blog</a></li>
                    <li><i class="icon-comments"></i><a href="#">4 Comments</a></li>
                </ul>
                <a href="#" class="float-sm-right">Continue reading <i class="icon-angle-right"></i></a>
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
        <% include SilverStripe\\Blog\\EntryMeta %>
    </div>
</div>

