# GlobalWarmingVis
## What is it about ?

With this project, we want to show the reality of global warming. A lot of visualisations already exist but our purpose was to look for a new way to present the problem. 
The first thing is the choice not to use a classic world map, because even though it is a convenient visualization in terms of global comparability there is a wide range of already existing global warming visualizations based on a world map.
However, we want to keep the aspect of comparibility as a main priority. Therefore we choose a simple visualization of a sample of countries spread across the world in order to show different the results 
Finally, we decided to offer the possibility of an interaction between user and visualiztion. We enable the user access a more detailed graph, which allows him to comprehend and analyse more easily the illustrated data.

## To what questions do we want to answer with the visualisation ?

Are there discrepencies between countries regarding global warming ?
Which countries are more impacted ?
Can we link global warming to the geographic position of the country ?
Can we explain why some countries are more impacted using our knowledge of their economic activities ?
How fast is global climate changing?
Could we predict what will happen in the future ?


## Where did we get the data ?

We got the data from this Kaggle link : https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data/data.
The data was either seperated by city or by country. We used the average temperature per country, mostly because prioritized a comparison of the effects on an international level rather than going into too much detail with the city-based dataset.

## What does it look like ?

All our visualisation fits on one web page.
When opening the page, 14 radar charts appear in front of you. They stand for this list of forteen countries : Canada, USA, Spain, France, Sweden, Russia, Brazil, Algeria, India, China, Argentina, South Africa, Madagascar and Australia.
<image src="img/startpage_visual.png" width="400" align="center">

As you can see, we tried to pick countries localized in different part of the earth and on different continents. 
We have : 
- 2 countries of North America
- 2 countries of South America
- 3 countries of Europe
- 3 countries of Africa
- 3 countries of Asia
- 1 country of Oceania
They are displayed as they would on a world map so you do not get confused and you can find your way easily.

In the center, a blank space show a text saying "Move the mouse over the country you want" making sure you get that this visualisation is interactive.
When moving your mouse over a country, you can see appearing a scatterplot chart in this big space showing the temperature of the particular country overtime.
It offers the opportunity to see the data from another point of view. It is also bigger so you can see it in greater details.

## How does it work ?

Without doing anything you can already get a lot of information. 
In each radar chart, each branch represents a month of the year. So you can see 12 branches, numeroted from 1 to 12.
Under each radar chart is written the name of the country it gets the data from.
Each line draws the data of one year. To make it clearer, we decided to draw the oldest year in blue and the earliest one in red, going from one another in a color gradation. 
Because it was to messy with the raw data, we decided to work a little bit on it. So every temperature of every year is drawn as the difference with the first year of the data. To make sure it is a clear explaination here is an example. If in January 1860 (first year) the temperature was of 10 degrees and the temperature in January 2010 was of 12 degrees then the visualisation will draw it as 12-10=2.
This way the first year of every chart always equals to 0 at every month and then we draw the rest as a difference with this first year.

When passing your mouse over a country, the scatter plot showing the average temperature each month of every year of this country overtime appears.
We kept the same color code, that is to say, the oldest year in blue and a color degradation from there to the earliest year in red. It is done for you to have a better look on the raw data of temperature, bigger and in more details. It also give the information of the usual temperature of the country, whether it is a cold or a hot country.

## Conclusion

We see that global warming affects in a greater way hot countries, the best example of our sample is Brazil and we see that for Sweden or Russia it is not so obvious.
