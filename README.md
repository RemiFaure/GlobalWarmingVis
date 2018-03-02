# GlobalWarmingVis
## What is it about ?

With this project, we want to show the reality of global warming. A lot of visualisations already exist but our purpose was to look for a new way to present the problem. 
The first thing is to choose not to use a classic world map like most of global warming visualisations do.
We also want to compare a few countries in one simple visualisation and we chose a sample of countries that should show different results.
Finally, we want to put a little bit of interaction to unable the user to see a other type of graph and better analyse the data.

## To what questions do we want to answer with the visualisation ?

Is there discrepencies between countries regarding global warming ?
Which countries are more impacted ?
Can we linked global warming to the geographic position of the country ?
Can we explain why some countries are more impacted using our knowledge of their economic activities ?
How fast is global warming evoluting ?
Could we predict what will happen in the future ?

## Where did we get the data ?

We got the data from this Kaggle link : https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data/data.
We used the average temperature per country one to keep it general rather than going in to much detail with the per city one.

## What does it look like ?

All our visualisation fits in one web page.
When opening the page, 14 radar charts appear to you. They stand for this list of forteen countries : Canada, USA, Spain, France, Sweden, Russia, Brazil, Algeria, India, China, Argentina, South Africa, Madagascar and Australia.
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
