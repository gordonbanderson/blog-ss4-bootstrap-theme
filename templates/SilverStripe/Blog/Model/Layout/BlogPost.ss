<% include Header %>

<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

            <!-- Title -->
            <h1 class="mt-4">$Title</h1>

            <!-- Author -->
            <p class="lead">
                <% if $Credits %>
                    <%t SilverStripe\\Blog\\Model\\Blog.By "by" %>

                    <% loop $Credits %>
                        <% if not $First && not $Last %>, <% end_if %>
                        <% if not $First && $Last %> <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %> <% end_if %>
                        <% if $URLSegment && not $Up.ProfilesDisabled %>
                            <a href="$URL">$Name.XML</a>
                        <% else %>
                            $Name.XML
                        <% end_if %>
                    <% end_loop %>
                <% end_if %>
            </p>

            <hr>

            <!-- Date/Time -->
            <p><%t SilverStripe\\Blog\\Model\\Blog.Posted "Posted" %>
                <a href="$MonthlyArchiveLink">$PublishDate.ago</a></p>

            <hr>

            <!-- Preview Image -->

            <% if $FeaturedImage %>
                <img class="img-fluid rounded" src="$FeaturedImage.ScaleWidth(750).URL" alt="">
            <% end_if %>

            $Content


            $Form
            $CommentsForm
        </div>

        <!-- Sidebar Widgets Column -->
        <% include SilverStripe\\Blog\\BlogSideBar %>



    </div>
    <!-- /.row -->

</div>
<!-- /.container -->

<% include Footer %>


