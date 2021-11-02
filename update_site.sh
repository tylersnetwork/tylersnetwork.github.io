jemdoc MENU
for file in jemdocs/*.jemdoc; do
    echo "updating $file"
    jemdoc $file
done

# Moving html files
mv jemdocs/*.html .

# Updating the permissions
chmod 644 *.html

# Adding the clustermap to the pages
line=30
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" index.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" publications.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" instructor.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" services.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" community_outreach.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" awards.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" openings.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" news.html

# Adding the office and Google Map link
line=45
gsed -i "${line}i Office: 4030 <a href=\"https://www.google.com/maps/place/Sony+Building/@36.1407466,-86.7962808,17z/data=!4m5!3m4!1s0x886467f2f83fb7ad:0x776e8cbe25bfd330!8m2!3d36.1406532!4d-86.7956447\">Sony Building</a><br />" index.html

# Adding the recruiting line
line=69
gsed -i "${line}i <p><b><font color=\"red\">[Open positions]</font><br> I am recruiting a postdoc to work with me on topics in my general research interests (seen below).</b> Similarly, I am also recruiting PhD students to work with me on these topics. Master's and undergraduate students within VU and visiting scholars are also welcome. Please feel free to email me. <br><b>Please see <a href=\"openings.html\">here</a> for position details.</b></p>" index.html

# Adding Twitter link
line=50
gsed -i "${line}i <a href=\"https://twitter.com/tylersnetwork?ref_src=twsrc%5Etfw\" class=\"twitter-follow-button\" data-show-count=\"true\">Follow @tylersnetwork</a><script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>" index.html

# Deleting ~ files
rm *~

echo "Website updated!"
