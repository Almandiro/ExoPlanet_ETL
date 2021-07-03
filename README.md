# ExoPlanet_ETL
ExoPlanet Catalog - ETL of Planetary Data

# Brief Description of Final Database:

ExoPlanet Catalog that provides descriptions of most known non-terran planets.  When complete, there will be a plethora of data for hypothetical astronomers to analyze and  understand which planets are the most interesting.

# Value of Hypothetical Database In Real World:

The beauty of this project is that the data is vast and from various sources.  Like the real world, data needs homogenization in order to tell the applicable story.

Organizations like NASA, SETI, and most astronomical institutions are searching for exoplanets and specifically those who resemble Earth.


# Data Source URLs:

[Using the Application Programming Interface (API) (caltech.edu)](https://exoplanetarchive.ipac.caltech.edu/docs/program_interfaces.html#data)

[Open Exoplanet Catalogue | Kaggle](https://www.kaggle.com/mrisdal/open-exoplanet-catalogue)

[Exoplanet Catalog | Discovery – Exoplanet Exploration: Planets Beyond our Solar System (nasa.gov)](https://exoplanets.nasa.gov/discovery/exoplanet-catalog/)

[Using the Application Programming Interface (API) (caltech.edu)](https://exoplanetarchive.ipac.caltech.edu/docs/program_interfaces.html#data)

[Exoplanets Data Explorer](http://exoplanets.org/table)

# ETL STEPS

1,) Obtain data from sources by using API, web scraping, and csv files.

2.) Create a flow chart

3.) Merge all collected data into postgres database

4,) Create a ReadMe file

5.) Create sample queries


| Name           | Role                    |
| -------------  |:-------------:          |
| Tamara Delice  | Kaggle csv, Nasa Scrape |
| Mubashira Qari | Cal Tech API            |
| Samson Yeong   | Nasa Scrape             |
|Ali Danesmand   | Erd, Data Model         |

# Tools

Python

Pandas

Splinter

Beautifulsoup

Postgres

Quick DBD

Json

Numpy



# Data Extraction, Transfer, Load

![Exoplanet_Erd](https://user-images.githubusercontent.com/39179454/124341725-703ecb80-db8c-11eb-9d85-39bc5566a61a.PNG)


Database Relationship



**Cal Tech**

Data retrieved from Cal Tech
Website provided a link for json code for all confirmed planets and parameters using microlensing method
Data was cleaned by first transforming the data into a data frame. Unused columns were dropped during the cleaning of the dataset.
KOI data was extracted through API.


**Nasa**

Website was to be scraped using splinter and Beautifulsoup, but another way was found scraping using json.
With json all information of the planet was scraped. The data was cleaned and transformed to use only the columns that are needed.

**Kaggle**

Kaggle had multiple csv files and the data was downloaded and imported into python
The data was cleaned and transformed in python. Columns that were unneeded were dropped.
Once all of the csv files on kaggle were completed, the data was compiled into one giant csv file.

**Loading the Data**

All the csv files that were transformed from each website was combined and compiled into the final csv file
Data was loaded into python to be cleaned by renaming columns
Data was split in Python  into data that would be based on the planet name, planets attribute, and stellar attribute.
Csv files were then loaded into Postgres because we wanted to use a relational database to link the files together.


![PlanetSelect](https://user-images.githubusercontent.com/39179454/124341731-7a60ca00-db8c-11eb-8e6f-74084a536981.PNG)


# Steps to Recreate

Dependencies to import

Python

Pandas

Splinter

Beautifulsoup

Postgres

Quick DBD

Json

Numpy

# Configurations (PC)

conda install anaconda

conda install pandas

pip install splinter

pip install webdriver_manager

pip install bs4

pip install html5lib

pip install numpy

pip install jsonlib

Chrome is needed to for splinter and the webdriver_manager. Chrome is the browser that will be used when web scraping data from the internet.

First run the dependencies

![dependencies](https://user-images.githubusercontent.com/39179454/124342048-ee03d680-db8e-11eb-8810-fd16559ed644.PNG)

After run the executable path to initially launch the web browser. When the browser intializes run the next cell with the URL


![web_driver](https://user-images.githubusercontent.com/39179454/124342103-784c3a80-db8f-11eb-8582-aaabea54d071.PNG)


Run this to initialize the web scrape

![scrape](https://user-images.githubusercontent.com/39179454/124342131-bf3a3000-db8f-11eb-9318-aec8485a0b2c.PNG)



