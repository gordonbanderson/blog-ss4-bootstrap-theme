<ul class="recent">
    <% loop $Posts %>
        <li>
            <div class="row">
                <div class="col col-sm-3 no-right-horizontal-column-padding">
                    <img src="$FeaturedImage.FocusFillMax(80,80).URL" alt="Blog post feature image for $Title"/>
                </div>
                <div class="col col-sm-9">
                    <h6><a href="$Link" title="$Title">$Title</a></h6>
                    <% if $Summary %>
                        $Summary
                    <% else %>
                        <p class="card-text">$Excerpt</p>
                    <% end_if %>
                </div>
            </div>
        </li>
    <% end_loop %>
</ul>

