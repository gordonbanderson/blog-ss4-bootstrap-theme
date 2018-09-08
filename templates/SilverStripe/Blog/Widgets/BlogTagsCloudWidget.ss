<% if $Tags %>
    <ul class="tags blogTagCloud">
        <% loop $Tags %>
            <li>
                <a href="$Link" title="$Title"><span class="text tagCount{$NormalizedTag}">$TagName</span></a>
            </li>
        <% end_loop %>
    </ul>
<% end_if %>
