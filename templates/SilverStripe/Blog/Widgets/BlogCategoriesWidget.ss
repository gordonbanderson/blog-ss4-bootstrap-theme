<% loop $SplitDataListIntoGridRows('getCategories',2) %>
    <div class="col-lg-6">
        <ul class="fa-ul">
        <% loop $Columns %>
            <li><i class="fa-li fa fa-list-alt"></i>
                <a href="$Link" title="$Title">
                    <span class="arrow">&rarr;</span>
                    <span class="text">$Title</span>
                </a>
            </li>
        <% end_loop %>
        </ul>
    </div>
<% end_loop %>
