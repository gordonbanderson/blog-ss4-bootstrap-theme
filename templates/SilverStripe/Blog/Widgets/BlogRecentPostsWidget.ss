<ul class="fa-ul">
    <% loop $Posts %>
        <li><i class="fa-li fa fa-book"></i>
            <a href="$Link" title="$Title">
                <span class="text">$Title</span>
            </a>
        </li>
    <% end_loop %>
</ul>
