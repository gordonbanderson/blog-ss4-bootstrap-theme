<div class="card mb-4">
    $FeaturedImage.ScaleWidth(750)
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

