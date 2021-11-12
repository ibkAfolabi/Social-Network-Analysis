# Social-Network-Analysis
Using SNA for Marketing
How to Improve Nigeria Business Profit through Data Science  Part 3 – Start-up Market Research Problem
 
The problem we are trying to solve in this tutorial is to help a start-up businesses do a social media based market research. The good thing about this tutorial is that even business that are on-going can also carry out this social media based market research to better reposition their business through online connections. 

Problem Scenario
Let’s assume that there is a start-up community bank that aims carrying out market research on existing major players in the banking industry in order to discover the major influencers on their social media platforms and then contact these influencers to promote their own banking activities. In this problem scenario, we selected a well-known bank (name made anonymous) as the major player and then conducted the market research using some extracted tweets of their twitter users for a particular month in the year.

Solving the Problem (Using Social Network Analysis)
A network is a  set of objects(nodes) with interconnections (edges). A network is Undirected if ibk is connected to femi, then femi must also be connected to ibk and there is no difference in the nature of these connections. In a directed network (e.g. twitter), ibk might follow femi but femi might not follow ibk.

Social Network Analysis is said to evolve from Sociology and it is based on mathematical notions of graph theory. In social network, if we have the structure of the graph a lot of opportunities and limitations of social units can be determined, including the outputs of a community. 
Network graph modelling is used to test the significance of the characteristics of observed network graphs, and also to study proposed mechanisms of real-world networks such as degree distributions and small-world effects.  

The degree of a node (in this case, the tweeter users that tweeted) is the numbers of users connected to that particular node.

There are several centrality measures, but in this tutorial we use Eigen vector centrality. This can be expressed as the degree to which a node is connected to other well connected nodes in the network. The eigenvector centrality is used to capture the notion that the more central the neighbours of a node, the more central the node itself.  The Eigen vector centrality can be calculated using the formular;
 
Where , C_(E_i )=(C_(E_i ) (1),…….,C_(E_i ) (N_v   ))T is the solution to the Eigen problem  Ac_(E_i )=α^(-1) c_(E_i ) (1),  where A is the adjacency matrix for the network G. 

We will be solving the problem in this tutorial in two major stages. 
	Create the network of the twitter users 
	Determine the major influencers by measuring the degree and Eigen vector centrality  values.

Prerequisites
To create the network in R, we would need to install the following packages and include it in our R code like this;

 

Snap shot of the data (twitter Ids have been made anonymous)
 

Create the network of twitter users in R
Below, a network is created from a data (sample picture above) which is stored in form of an edge list. Since our case study deals with tweets, then this is a directed network and the edge list stores the source (who tweeted) and target to whom it was tweeted).  The csv file that stores the data is named “OldEdgelist.csv"  
 

Output in R
 
From the out of the network in R it is obvious that the network is not properly visualized and we might not be able to make much conclusion from it. Using the codes below, we can customize the network for better visualization in R. Below is just one way to better customize the network.
 

Output in R
 
Visualizing the Graph with Gephi
There are other network visualization tools such as gephi, networkX, graphViz and so on. Below is  a  visualization of the network in Gephi. This offers more insight to the nature of the network.
 
The network visualized using gephi (https://gephi.org)

Determine the major influencers by measuring the degree and Eigen vector centrality values.


Degree: Degree is the number of connections coming in and out of a node. It is the number of edges that a node has. From the graph, about  224 nodes have a degree of 1. The node n9 has the highest number of connected edges which is 379. The node n127 has the second-highest number of connected edges which is 126. The node n64 has the third-highest number of connected edges which is  120. Note that the twitter identities of the nodes have been made anonymous. 
To get the degree in R, we use the following:

 

Output in R (snapshot of part of the output)
 
 

Eigenvector Centrality
Eigenvector Centrality measures how connected a node is to other connected node i.e. nodes with a not so high degree but have high Eigenvector Centrality  are uniquely important people because they connect highly important people in the graph. The node  n9  is the node with the highest Eigenvector Centrality of 1.00000000. The node n64 is the node with the second-highest Eigenvector Centrality of 0.92215286.  The node n46 is the node with the third-highest Eigenvector Centrality of 0.90684536

To get the Eigenvector Centrality in R, we use the following;

 

Output in R (snapshot of part of the output)
 

Conclusion - Back to our Problem Scenario
From the above results, based on the data used (tweets downloaded in the month of October of a particular year), n64 and n46 twitter handle happens to be the most influential commenters on the anonymous bank twitter platform. This information can be used in various ways; we can decide as a start-up community bank, to establish a connection with these users since we know that these nodes are connected to other well connected nodes in the network (definition of eigen vector centrality) . This connection can be for purpose of marketing, since they are better positioned to reach more people interested in banking activities compared to the community bank that is just getting on board the social network platform. This information can also be followed up by the anonymous bank in question, if they were the one that carried out the research, also for marketing purposes.

Thanks for reading to the end.   If you have any question you would like us to address, you can click here and we will get back to you as part of our free consulting services Thanks.

References
	Arif T.,  Ali R. and  Asger M (2012)Scientific Co-authorship Social Networks: A Case Study of Computer Science Scenario in India nternational Journal of Computer Applications (0975 – 8887)
Volume 52– No.12
	Kolaczyk ED, Csárdi G. Statistical analysis of network data with R (vol. 65). 2014.
