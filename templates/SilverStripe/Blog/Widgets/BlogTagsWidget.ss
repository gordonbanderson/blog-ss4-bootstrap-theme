<% if $Tags %>
    <ul class="tags">
		<% loop $Tags %>
			<li>
				<a href="$Link" title="$Title">$Title</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>
