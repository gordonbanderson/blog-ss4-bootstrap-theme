<article>
            <div class="post-image">
                <div class="post-heading">
                    <h3><a href="$Link">$Title</a></h3>
                </div>

                <% if $FeaturedFlickrImageID %>
                    <% include LazySize/FullWidthFlickrImage8 FlickrID=$FeaturedFlickrImageID,Caption=$FeaturedImageCaption,ExtraClasses='rounded' %>
                <% end_if %>

                <% if $FeaturedImage %>
                    <% include LazySize/FullWidthImage8 Image=$FeaturedImage,Caption=$FeaturedImageCaption,ExtraClasses='rounded' %>
                <% end_if %>
            </div>

            <% if $Summary %>
                $Summary
            <% else %>
                <p>$Excerpt</p>
            <% end_if %>

            <div class="bottom-article">
                <% include SilverStripe\\Blog\\EntryMeta For='bloglisting' %>
            </div>
</article>
