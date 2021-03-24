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
line=39
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" index.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" publications.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" presentations.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" past_projects.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" teaching_assistant.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" instructor.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" coinstructor.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" tutoring.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" mentoring.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" services.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" community_outreach.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" awards.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" symposiums.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" openings.html

# Adding the recruiting line
line=77
gsed -i "${line}i <p><b><font color=\"red\">[Open positions]</font><br> I am recruiting</b> PhD students to work with me on topics in my general research interests (seen below). Master's and undergraduate students within VU and visiting scholars are also welcome. Please feel free to email me. <br><b>Please see <a href=\"openings.html\">here</a> for position details.</b></p>" index.html

# Adding Twitter link
line=58
gsed -i "${line}i <a href=\"https://twitter.com/tylersnetwork?ref_src=twsrc%5Etfw\" class=\"twitter-follow-button\" data-show-count=\"true\">Follow @tylersnetwork</a><script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>" index.html

# Deleting ~ files
rm *~

echo "Website updated!"
