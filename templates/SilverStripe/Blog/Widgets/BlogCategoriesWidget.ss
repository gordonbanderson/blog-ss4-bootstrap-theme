<% if $Categories %>
	<ul class="fa-ul">
		<% loop $Categories %>
			<li><i class="fa-li fa fa-list-alt"></i>
				<a href="$Link" title="$Title">
					<span class="arrow">&rarr;</span>
					<span class="text">$Title</span>
				</a>
			</li>
		<% end_loop %>
	</ul>
<% end_if %>


<!-- Categories Widget -->


<div class="col-lg-6">
    <ul class="list-unstyled mb-0">
        <li>
            <a href="#">Web Design</a>
        </li>
        <li>
            <a href="#">HTML</a>
        </li>
        <li>
            <a href="#">Freebies</a>
        </li>
    </ul>
</div>
<div class="col-lg-6">
    <ul class="list-unstyled mb-0">
        <li>
            <a href="#">JavaScript</a>
        </li>
        <li>
            <a href="#">CSS</a>
        </li>
        <li>
            <a href="#">Tutorials</a>
        </li>
    </ul>
</div>
