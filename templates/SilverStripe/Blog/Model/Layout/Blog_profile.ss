<% include Header %>

<main role="main" class="container">
		<% include SilverStripe\\Blog\\MemberDetails %>

    	<% if $PaginatedList.Exists %>
    		<h2>Posts by $CurrentProfile.FirstName $CurrentProfile.Surname for $Title:</h2>
    		<% loop $PaginatedList %>
    			<% include SilverStripe\\Blog\\PostSummary %>
    		<% end_loop %>
    	<% end_if %>

    	$Form
    	$CommentsForm

    	<% with $PaginatedList %>
    		<% include SilverStripe\\Blog\\Pagination %>
    	<% end_with %>

	<% include SilverStripe\\Blog\\BlogSideBar %>

</main>

<% include Footer %>


