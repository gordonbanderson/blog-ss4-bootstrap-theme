<!DOCTYPE html>
<html lang="$ContentLocale">
  <head>
  	<% base_tag %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
$PageMetaTags

    <% include AllCSSFiles %>
  </head>

  <body class="$ClassName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>

      <% include TopBar %>
      <% include Header %>
      <% include InnerHeadline %>

        $Layout

      <% include Footer %>
      <% include CookieConsent %>
    <% include AllJavaScriptFiles %>
  </body>
</html>
