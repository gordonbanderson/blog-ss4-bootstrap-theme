<div class="row">
    <div class="col col-xs-12">
        <ul class="meta-post">
            <li><i class="fa fa-calendar"></i>
                $PublishDate.Format('dd/MM/y')
            </li>

                <li><i class="fa fa-history"></i>
                 <time class="timeago"
                      datetime="$PublishDate.Format(y-MM-dd'T'HH:mm:ss'Z')"></time>
                </li>

                <% loop $Credits %>
                    <li>
                    <i class="fa fa-user"></i>
                    <% if $URLSegment && not $Up.ProfilesDisabled %>
                        <a href="$URL">$Name.XML</a>
                    <% else %>
                        $Name.XML
                    <% end_if %>
                    </li>
                <% end_loop %>

            <% loop $Tags %>
                <li><i class="fa fa-tag"></i><a href="$Link">$Title</a></li>
            <% end_loop %>

            <% loop $Categories %>
                    <li><i class="fa fa-folder-open"></i>&nbsp;<a href="$Link">$Title</a><span><!-- add count here --></span></li>
            <% end_loop %>

            <% if $For == 'bloglisting' %>
                <li><i class="fa fa-comment"></i>
                    <a href="{$Link}#comments-holder">$Comments.Count <% if $Comments.Count == 1 %>comment<% else %>comments<% end_if %></a></li>
            <% else %>
                <li><a href="#comments-holder">$Comments.Count <% if $Comments.Count == 1 %>comment<% else %>comments<% end_if %></a></li>
            <% end_if %>

            <% if $ClassName='Suilven\\CricketSite\\Model\\MatchReport' %>
                 <li><i class="fa fa-map-marker"></i>$Match.Ground.Name</li>
            <% end_if %>

        </ul>
    </div>
</div>
