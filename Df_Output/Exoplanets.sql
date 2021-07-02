-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/g1jghZ
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "ExoPlanet" (
    "planetIDNum" int,
    "PlanetName" varchar(255),
    CONSTRAINT "pk_ExoPlanet" PRIMARY KEY (
        "planetIDNum"
     )
);

CREATE TABLE "ExoPlanetSizeAttributes" (
    "exoplanetAttributesID" int,
    "planetRaidus" float,
    "planetMassKG" float,
    "planetMassEarth" float,
    "planetMassJupter" float,
    "PlanetType" varchar(255),
    CONSTRAINT "pk_ExoPLanetSizeAttributes" PRIMARY KEY (
        "exoplanetAttributesID"
     )
);

CREATE TABLE "ExoPlanetStellarAttributes" (
    "stellarAttributesID" intL,
    "StellarMass" float,
    "planetaryOrbitPeriod",
    "stellarRA" varchar(255),
    "StellarDec" varchar(255),
    CONSTRAINT "pk_ExoPlanetStellarAttributes" PRIMARY KEY (
        "stellarAttributesID"
     )
);

ALTER TABLE "ExoPlanet" ADD CONSTRAINT "fk_ExoPlanet_planetIDNum" FOREIGN KEY("planetIDNum")
REFERENCES "ExoPLanetSizeAttributes" ("exoplanetAttributesID");

ALTER TABLE "ExoPlanetStellarAttributes" ADD CONSTRAINT "fk_ExoPlanetStellarAttributes_stellarAttributesID" FOREIGN KEY("stellarAttributesID")
REFERENCES "ExoPlanet" ("planetIDNum");

