# GlobalWarmingVis
## What is it about ?

With this project, we want to show the reality of global warming. A lot of visualisations already exist, but aimed to find a new way to present the problem. 

The first thing is the choice not to use a classic world map, because even though it is a convenient visualization in terms of global comparability there is a wide range of already existing global warming visualizations based on a world map.

However, we want to keep the aspect of comparability as a main priority. Therefore we choose a simple visualization of a sample of countries spread across the world in order to show different the results.

Finally, we decided to offer the possibility of an interaction between user and visualization. We enable the user access a more detailed graph, which allows him to comprehend and analyse more easily the illustrated data.

## To what questions do we want to answer with the visualisation ?

Are there discrepancies between countries regarding global warming ?

Which countries are more impacted ?

Can we link global warming to the geographic position of the country ?

Can we explain why some countries are more impacted using our knowledge of their economic activities ?

How fast is global climate changing?

Could we predict what will happen in the future ?


## Where did we get the data ?

We got the data from this Kaggle link : https://www.kaggle.com/berkeleyearth/climate-change-earth-surface-temperature-data/data.

The data was either separated by city or by country. We used the average temperature per country, mostly because we prioritized a comparison of the effects on an international level rather than going into too much detail with the city-based dataset.
In a next step we preprocessed the data. The main reason for this measure were missing values in the dataset and to reduce its size. With the data analysis software Rstudio we filtered out a sample of countries. Furthermore, we removed all the missing values together with their corresponding year. Because of these modifications we were able to considerably reduce the size of the data set ( [Code](https://github.com/RemiFaure/GlobalWarmingVis/blob/master/data/Traitement%20data.R)): 

| Data set | Observations |
| --- | --- |
| Initial data set | 577462 |
| Sample data set | 36291 |
| Cleansed sample set| 24264 |



## What does it look like ?

A presentation video has been made and sent to Vimeo, here's the link : https://vimeo.com/259178065

All our visualisation fits on one web page.
When opening the page, 14 radar charts appear in front of you. They stand for this list of 14 countries : Canada, USA, Spain, France, Sweden, Russia, Brazil, Algeria, India, China, Argentina, South Africa, Madagascar and Australia.

<image src="img/startpage_visual.jpg" width="400" align="center">

As you can see, we tried to pick countries localized in different parts of the earth and on different continents. 
We have : 

- 2 countries in North America
- 2 countries in South America
- 3 countries in Europe
- 3 countries in Africa
- 3 countries in Asia
- 1 country in Oceania

They are displayed as they would on a world map so you do not get confused and you can find your way easily.

In the center, a blank space shows a text, which provides the user with the necessary information to understand the graphics. By saying "Move the mouse over the country you want" we are ensuring that the user does not miss out on the interactive part of our visualization.

When moving your mouse over a country a scatterplot chart appears in the middle of the page showing the evolution of its temperature overtime. It translates the superimposed graphs of the radar chart into a scatterplot with each point representing the temperature of the month X in the year Y. Thereby, offering the user the opportunity to see the data from another point of view and in greater detail. The y-axis scaling stays for all the countries the same in order to simplify the comparison, when changing to another country. 

<image src="img/interact_visual.jpg" width="400" align="center">

By clicking on the radar chart the y-axis scaling adapts to the maximum and minimum of the country's temperatures, which enables the user to more easily detect changes and tendencies of the temperature.

<image src="img/interact_2.jpg" width="400" align="center" title="bild">

Finally, to get the detail of the exact temperature at a particular date, you can pass over a point of the scatterplot with the mouse and get the information.

<image src="img/detail_scatterplot.jpg" width="400" align="center" title="bild">

## How does it work ?

Without doing anything you can already get a lot of information. 

In each radar chart, each branch represents a month of the year. So you can see 12 branches.

Under each radar chart is written the name of the country it gets the data from.

Each line draws the data of one year. To be more specific, we decided to draw the oldest year in blue and the earliest one in green, gradually changing the color. 

In a first try we plotted the temperature of each month, but the results were too messy to extract any significant information.Therefore, we decided to introduce a the first year of the dataset as the benchmark and plot the difference of with every following year. 

For example: If in January 1860 (first year) the was 10 degrees and in January 2010 it was 12 degrees, then the visualization will draw it as 12-10=2.

This way the first year of every chart always equals 0 for every month and all the following years are drawn as the difference with this first year.

We kept the same color code, that is to say, the oldest year in blue and a color degradation from there to the most recent year in green. It gives the user a better look on the raw data of temperature, bigger and more detailed. Also, it gives the information about the usual temperature of the country, whether it is a cold or a hot country. However, we chose not to use the colors blue and red, because even though it is a visualization of the global warming, we decided to avoid any prejudicial choice of color. 

## Conclusion

The visualization shows the reality of Global Warming. We can see that all countries are affected but not necessarily at the same extent.

We managed to find another way to look at the data in oposition to world maps. Our visualization keeps it simple and clear.

When looking at the countries on radar charts and then in greater details on the scatterplot we see that some of them gained almost 2 degrees over this period of time. This might seem a tiny change but it is not. It has huge impacts on everything, going from oceans levels to agriculture and animals lives.

Our visualization clearly shows that countries with a hot climate are more affected by global warming. The best example of our sample is Brazil, since throughout the seasons the temperature has gradually risen. 

With respect to the countries with a cold climate, it becomes more difficult to determine a clear effect of global warming. However, the temperatures during the winter season vary significantly more than during the summer. 

Therefore, we can conclude that the global warming affects countries from different regions differently.
