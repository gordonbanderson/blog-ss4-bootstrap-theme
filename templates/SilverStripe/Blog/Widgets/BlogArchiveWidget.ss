<% if $Archive %>
	<ul class="fa-ul">
		<% loop $Archive %>
			<li>
                <i class="fa-li fa fa-calendar-alt"></i>
				<a href="$Link" title="$Title">
					<span class="text">$Title</span>
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>
