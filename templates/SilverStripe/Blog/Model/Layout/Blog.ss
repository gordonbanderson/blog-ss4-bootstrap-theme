<% require css('silverstripe/blog: client/dist/styles/main.css') %>

<% include Header %>


<!-- Page Content -->
<div class="container">

    <div class="row">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

            <h1 class="my-4">Page Heading
                <small>Secondary Text</small>
            </h1>

            <% if $PaginatedList.Exists %>
                <% loop $PaginatedList %>
                    <% include SilverStripe\\Blog\\PostSummary %>
                <% end_loop %>
            <% else %>
                <p><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
            <% end_if %>

            <!-- Pagination -->
            <% with $PaginatedList %>
                <% include SilverStripe\\Blog\\Pagination %>
            <% end_with %>

        </div>

        <!-- Sidebar Widgets Column -->
        <% include SilverStripe\\Blog\\BlogSideBar %>


    </div>
    <!-- /.row -->

</div>
<!-- /.container -->


<% include Footer %>


