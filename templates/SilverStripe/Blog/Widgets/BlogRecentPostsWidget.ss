<ul class="recent">
    <% loop $Posts %>
        <li>
            <img src="$FeaturedImage.FocusFillMax(65,65).URL" class="pull-left" alt="Blog post feature image for $Title"/>
            <h6><a href="$Link" title="$Title">$Title</a></h6>
            <% if $Summary %>
                $Summary
            <% else %>
                <p class="card-text">$Excerpt</p>
            <% end_if %>
        </li>
    <% end_loop %>

</ul>
