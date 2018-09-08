<div class="row">
    <div class="col col-xs-12">
        <ul class="meta-post">
            <li><i class="fa fa-calendar"></i>
                <time class="timeago"
                      datetime="$PublishDate.Format(y-MM-dd'T'HH:mm:ss'Z')">$PublishDate.Nice</time>
            </li>
            <li><i class="fa fa-user"></i>
                <% loop $Credits %>
                    <% if not $First && not $Last %>, <% end_if %>
                    <% if not $First && $Last %> <%t SilverStripe\\Blog\\Model\\Blog.AND "and" %> <% end_if %>
                    <% if $URLSegment && not $Up.ProfilesDisabled %>
                        <a href="$URL">$Name.XML</a>
                    <% else %>
                        $Name.XML
                    <% end_if %>
                <% end_loop %>
            </li>
            <li><i class="fa fa-folder-open"></i><a href="#"> Blog</a></li>
            <li><i class="fa fa-tag"></i><a href="#">Web design</a></li>
            <li><i class="fa fa-comment"></i>$Comments.Count <% if $Comments.Count == 1 %>comment<% else %>comments<% end_if %></li>

            <li>For=$For</li>

        </ul>
    </div>
</div>
