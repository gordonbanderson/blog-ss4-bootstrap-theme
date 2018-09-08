<ul class="cat">
<% loop $SplitDataListIntoGridRows('getCategories',1) %>
        <% loop $Columns %>
            <li><i class="fa fa-angle-right"></i>&nbsp;<a href="$Link">$Title</a><span> (20)</span></li>
        <% end_loop %>
<% end_loop %>
</ul>
