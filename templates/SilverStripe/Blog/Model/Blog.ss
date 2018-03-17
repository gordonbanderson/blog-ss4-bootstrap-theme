<!DOCTYPE html>
<html lang="$ContentLocale">
  <head>
  	<% base_tag %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title><% if $URLSegment == 'home' %>$SiteConfig.Title<% else %><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> - $SiteConfig.Title<% end_if %></title>
    <% include AllCSSFiles %>

  </head>

      <% include TwitterScript %>

  <body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
    $Layout
      <% include AllJavaScriptFiles %>
      <% require javascript("weboftalent-twitter-tools/javascript/render-twitter-embeds.js") %>

  </body>
</html>
