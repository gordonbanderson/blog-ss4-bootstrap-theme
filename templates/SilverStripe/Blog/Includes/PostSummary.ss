<article>
    <div class="row">
        <div class="span8">
            <div class="post-image">
                <div class="post-heading">
                    <h3><a href="$Link">$Title</a></h3>
                </div>

                <% if $FeaturedImage %>
                    <% include LazySize/FullWidthImage8 Image=$FeaturedImage,Caption=$FeaturedImageCaption,ExtraClasses='rounded' %>
                <% end_if %>
            </div>
            <p>
                Qui ut ceteros comprehensam. Cu eos sale sanctus eligendi, id ius elitr saperet, ocurreret pertinacia pri an. No mei nibh consectetuer, semper laoreet perfecto ad qui, est rebum nulla argumentum ei. Fierent adipisci iracundia est ei, usu timeam persius
                ea. Usu ea justo malis, pri quando everti electram ei, ex homero omittam salutatus sed.
            </p>

            <div class="bottom-article">
                <% include SilverStripe\\Blog\\EntryMeta For='bloglisting' %>
            </div>
        </div>
    </div>
</article>
