<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col col-sm-8">
            <div class="row">
                <article>
                    <div class="col col-lg-12">
                        <div class="post-image">

<% if $FeaturedFlickrImageID %>
<% include LazySize/FullWidthFlickrImage8 FlickrID=$FeaturedFlickrImageID,Caption=$FeaturedImageCaption,ExtraClasses='rounded' %>
<% end_if %>

                            <% if $FeaturedImage %>
                                <% include LazySize/FullWidthImage8 Image=$FeaturedImage,Caption=$FeaturedImageCaption,ExtraClasses='rounded' %>
                            <% end_if %>
                            <% if $FeaturedImageCaption %><p class="caption mt-1">$FeaturedImageCaption</p><% end_if %>
                        </div>
                        $Content

                        <div class="bottom-article">
                            <% include SilverStripe\\Blog\\EntryMeta For='blogpost' %>
                        </div>
                    </div>
                </article>
            </div>

            <!-- Post Content Column -->
            <!-- author info -->
            <% loop $Authors %>
                <div class="row about-author">
                    <div class="col col-2 col-sm-1 thumbnail-container">
                        <a href="#" class="thumbnail">
                            <img src="$BlogProfileImage.FocusFillMax(60,60).URL"
                                 alt="Blog profile image for $Title"/>
                        </a>
                    </div>

                    <div class="col col-6 col-sm-7">
                        <h5><strong><a href="#">$Title</a></strong></h5>
                        <p>$BlogProfileSummary</p>
                    </div>
                </div>
            <% end_loop %>

            $CommentsForm
        </div>
        <% include SilverStripe\\Blog\\BlogSideBar %>
    </div>


</div>



