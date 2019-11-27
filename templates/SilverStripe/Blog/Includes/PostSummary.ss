<article>
            <div class="post-image">
                <div class="post-heading">
                    <h3><a href="$Link">$Title</a></h3>
<% if $ClassName='Suilven\\CricketSite\\Model\\MatchReport' %>
<% with $Match %>
<div class="matchSummary">
$FirstInnings.Team.Name $FirstInnings.TotalRuns/$FirstInnings.TotalWickets ({$FirstInnings.TotalOvers}.{$FirstInnings.TotalBalls} ov),
$SecondInnings.Team.Name $SecondInnings.TotalRuns/$SecondInnings.TotalWickets ({$SecondInnings.TotalOvers}.{$SecondInnings.TotalBalls} ov)
</div>
<% end_with %>
<% end_if %>
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
