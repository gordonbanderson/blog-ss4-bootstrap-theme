<% include Header %>

<!-- Page Content -->
<div class="container">

    <div class="row">
        <div class="col col-sm-8">
            <div class="row">
                <article>
                    <!-- Post Content Column -->
                    <div class="col col-lg-12">
                        <div class="post-image">
                            <% if $FeaturedImage %>
                                <img class="img-fluid rounded" src="$FeaturedImage.FocusFillMax(750,500).URL"
                                     alt="Image for blog post $Title">
                            <% end_if %>
                        </div>
                        $Content1

                        <div class="bottom-article">
                            <div class="row">
                                <div class="col col-xs-12">
                                    <ul class="meta-post">
                                        <li><i class="fa fa-calendar"></i>
                                            <time class="timeago"
                                                  datetime="$PublishDate.Format(y-MM-dd'T'HH:mm:ss'Z')">$PublishDate.Nice</time>
                                        </li>
                                        <li><i class="fa fa-user"></i>
                                            <% loop $Credits %>
                                                <% if not $First && not $Last %>, <% end_if %>
                                                <% if not $First && $Last %> <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %> <% end_if %>
                                                <% if $URLSegment && not $Up.ProfilesDisabled %>
                                                    <a href="$URL">$Name.XML</a>
                                                <% else %>
                                                    $Name.XML
                                                <% end_if %>
                                            <% end_loop %>
                                        </li>
                                        <li><i class="fa fa-folder-open"></i><a href="#"> Blog</a></li>
                                        <li><i class="fa fa-tag"></i><a href="#">Web design</a></li>
                                        <li><i class="fa fa-comment"></i>$Comments.Count <% if $Comments.Count == 1 %>comment<% else %>comments<% end_if %></li>
                                    </ul>
                                </div>
                            </div>
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
<!-- /.row -->

</div>
<!-- /.container -->

<% include Footer %>


