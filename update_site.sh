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
line=37
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" index.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" publications.html
#gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" instructor.html
#gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" services.html
#gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" community_outreach.html
#gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" awards.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" openings.html
gsed -i "${line}i <script type=\"text/javascript\" id=\"clustrmaps\" src=\"//cdn.clustrmaps.com/map_v2.js?d=leIDuRwlUzsESOVq6m32RqbgLChp2xkZYp22IZ7\QInU&cl=ffffff&w=a\"></script>" news.html

# Adding the office and Google Map link
line=52
gsed -i "${line}i Office: 4030 <a href=\"https://www.google.com/maps/place/Sony+Building/@36.1407466,-86.7962808,17z/data=!4m5!3m4!1s0x886467f2f83fb7ad:0x776e8cbe25bfd330!8m2!3d36.1406532!4d-86.7956447\">Sony Building</a><br />" index.html


#<p>Tyler directs the <a href=\"http://my.vanderbilt.edu/nds\">Network and Data Science (NDS) lab</a>, which focuses on data mining and machine learning, especially in social network analysis, deep learning on graphs, and data science for social good with applications in drug discovery, education, political science, and autism research. He has published in and regularly serves as a SPC/PC member at the top conferences in these domains and served in organizational roles including Publicity Co-Chair of KDD&rsquo;22&rsquo;23, Doctoral Consortium Co-Chair of WSDM&rsquo;22, Proceedings Co-Chair of KDD&rsquo;21, and co-organized the Deep Graph Learning workshop at IEEE BigData&rsquo;19, Machine Learning on Graphs workshop at WSDM&rsquo;22/&rsquo;23 and ICDM&rsquo;22, Topic Editor in Frontiers in Big Data, and Associate Editor for Elsevier Big Data Research. He was the recipient of the Best Reviewer Award at ICWSM&rsquo;19</i>&rsquo;21, the Best Student Poster Award at SDM&rsquo;19, the &ldquo;People's Choice&rdquo; Award for the 3 Minute Thesis Competition at MSU, the Fall 2020 Teaching Innovation Award from the School of Engineering at Vanderbilt, and his student Yu Wang recently received Vanderbilt's C. F. Chen Best Paper Award in Computer Science in 2022. <br /></p> 

line=62
gsed -i "${line}i <table class=\"imgtable\"> <td style=\"width:50%\"> <h2>Research Interests</h2> <p>data mining, machine learning, mining and learning on graphs, social network anlaysis, graph neural networks, ethical and responsible AI, recommendation systems, data science for social good (e.g., drug discovery, education, political science, and autism research) <p><b> <font color=\"red\">[Open positions]</font><br> I am recruiting PhD students to work with us in the NDS Lab on topics in our general interests (see NDS Lab research interests to the right).</b> Master's and undergraduate students within Vanderbilt University and visiting scholars are also welcome. Please feel free to email me. <br><b>Please see <a href=\"openings.html\">here</a> for position details.</b></p> <h2>Call for Papers</h2> <ul> <li><p><a href=\"https://mlog-workshop.github.io/wsdm24\">The 5th International Workshop on Machine Learning on Graphs at ACM WSDM'24</a> - Workshop Organizer</p> <ul> <li><p>Submission Deadline: January 15th, 2024</p> </li> </ul> </ul> </td> <td> <a href=\"https://nds-vu.github.io/research/\"> <img src=\"images/NDS_overview.png\" alt=\"Image of NDS Research\" width=\"500px\" /> </a>&nbsp;</td> </table>" index.html

#to be added back with new frontiers edition
#<li><p><a href=\"https://gta3.hrl.com/\">The 7th Workshop on Graph Techniques for Adversarial Activity Analytics (GTA3) at IEEE BigData'23</a> - Workshop Organizer</p> <ul> <li><p>Submission Deadline: Oct. 10th, 2023</p> </li> </ul>
#<li><p><a href=\"https://www.frontiersin.org/research-topics/30288/machine-learning-on-complex-graphs\">Machine Learning on Complex Graphs</a> - Frontiers in Big Data (Topic Editor)</p> <ul>  <li><p>Submission Deadline: TBA (currently relaunching the topic) (<a href=\"https://www.frontiersin.org/research-topics/30288/machine-learning-on-complex-graphs/participate-in-open-access-research-topic\">link</a>)</p> </li> </ul>


#line=55
#gsed -i "${line}i <table class=\"imgtable\"> <td style=\"width:50%\"> <p>Tyler directs the <a href=\"http://my.vanderbilt.edu/nds\">Network and Data Science (NDS) lab</a>, which focuses on data mining and machine learning, especially in social network analysis, deep learning on graphs, and data science for social good with applications in drug discovery, education, political science, and autism research. He has published in and regularly serves as a SPC/PC member at the top conferences in these domains and served in organizational roles including Publicity Co-Chair of KDD&rsquo;22&rsquo;23, Doctoral Consortium Co-Chair of WSDM&rsquo;22, Proceedings Co-Chair of KDD&rsquo;21, and co-organized the Deep Graph Learning workshop at IEEE BigData&rsquo;19, Machine Learning on Graphs workshop at WSDM&rsquo;22/&rsquo;23 and ICDM&rsquo;22, Topic Editor in Frontiers in Big Data, and Associate Editor for Elsevier Big Data Research. He was the recipient of the Best Reviewer Award at ICWSM&rsquo;19</i>&rsquo;21, the Best Student Poster Award at SDM&rsquo;19, the &ldquo;People's Choice&rdquo; Award for the 3 Minute Thesis Competition at MSU, the Fall 2020 Teaching Innovation Award from the School of Engineering at Vanderbilt, and his student Yu Wang recently received Vanderbilt's C. F. Chen Best Paper Award in Computer Science in 2022. <br /></p> <h2>Research Interests</h2> <p>data mining, machine learning, mining and learning on graphs, social network anlaysis, graph neural networks, ethical and responsible AI, recommendation systems, data science for social good (e.g., drug discovery, education, political science, and autism research) <p><b> <font color=\"red\">[Open positions]</font><br> I am recruiting PhD students to work with me on topics in my general interests (seen below).</b> Master's and undergraduate students within VU and visiting scholars are also welcome. Please feel free to email me. <br><b>Please see <a href=\"openings.html\">here</a> for position details.</b></p> <h2>Call for Papers</h2> <ul> <li><p><a href=\"https://www.frontiersin.org/research-topics/30288/machine-learning-on-complex-graphs\">Machine Learning on Complex Graphs</a> - Frontiers in Big Data (Topic Editor)</p> <ul> <li><p>Welcomed topics include: graph kernels/summarization/coarsening/alignment/etc, graph neural networks, network embedding, related applications, etc</p> </li> <li><p>We especially invite submissions with emphasis on complex graphs such as dynamic/hyper/heterogeneous/knowledge graphs</p> </li> <li><p>Submission Deadline: TBA (currently relaunching the topic) (<a href=\"https://www.frontiersin.org/research-topics/30288/machine-learning-on-complex-graphs/participate-in-open-access-research-topic\">link</a>)</p> </li> </ul> </td> <td> <img src=\"images/NDS_research.png\" alt=\"Image of NDS Research\" width=\"85%\" />&nbsp;</td> </td> </tr> </table> <tr>" index.html



# Adding the recruiting line
#line=68
#gsed -i "${line}i <p><b><font color=\"red\">[Open positions]</font><br> I am recruiting PhD students to work with me on topics in my general interests (seen below).</b> Master's and undergraduate students within VU and visiting scholars are also welcome. Please feel free to email me. <br><b>Please see <a href=\"openings.html\">here</a> for position details.</b></p>" index.html
#gsed -i "${line}i <p><b><font color=\"red\">[Open positions]</font><br> I am recruiting a postdoc to work with me on topics in my general research interests (seen below).</b> Similarly, I am also recruiting PhD students to work with me on these topics. Master's and undergraduate students within VU and visiting scholars are also welcome. Please feel free to email me. <br><b>Please see <a href=\"openings.html\">here</a> for position details.</b></p>" index.html

# Adding Twitter link
line=57
gsed -i "${line}i <a href=\"https://twitter.com/tylersnetwork?ref_src=twsrc%5Etfw\" class=\"twitter-follow-button\" data-show-count=\"true\">Follow @tylersnetwork</a><script async src=\"https://platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>" index.html

# Deleting ~ files
rm *~

echo "Website updated!"
