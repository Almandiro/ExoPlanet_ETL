-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "ExoPlanet" (
    "planetIDNum" int   NOT NULL,
    "planetName" varchar(50)   NOT NULL,
    "explanetAttributesID" int   NOT NULL,
    "stellarAttributesID" int   NOT NULL,
    "habitableID" int   NOT NULL,
    CONSTRAINT "pk_ExoPlanet" PRIMARY KEY (
        "planetIDNum"
     )
);

CREATE TABLE "ExoPlanetSizeAttributes" (
    "explanetAttributesID" int   NOT NULL,
    "planetRadius" float   NOT NULL,
    "planetMassKG" float   NOT NULL,
    "planetMassEarth" float   NOT NULL,
    "planetMassJupiter" float   NOT NULL,
    "planetType" varchar(255)   NOT NULL,
    "dictID1" int   NOT NULL,
    "dictID2" int   NOT NULL,
    "dictID3" int   NOT NULL,
    "dictID4" int   NOT NULL,
    "dictID5" int   NOT NULL,
    CONSTRAINT "pk_ExoPlanetSizeAttributes" PRIMARY KEY (
        "explanetAttributesID"
     )
);

CREATE TABLE "ExoPlanetStellarAttrributes" (
    "stellarAttributesID" int   NOT NULL,
    "StellarMass" float   NOT NULL,
    "planetaryOrbitPeriod" float   NOT NULL,
    "stellarRA" float   NOT NULL,
    "stellarDec" float   NOT NULL,
    "dictID1" int   NOT NULL,
    "dictID2" int   NOT NULL,
    "dictID3" int   NOT NULL,
    "dictID4" int   NOT NULL,
    CONSTRAINT "pk_ExoPlanetStellarAttrributes" PRIMARY KEY (
        "stellarAttributesID"
     )
);

CREATE TABLE "ExoPlanetHabitable" (
    "habitableID" int   NOT NULL,
    "confirmed" bool   NOT NULL,
    "kepplerType" varchar(255)   NOT NULL,
    "distanceToEarth" float   NOT NULL,
    "dictID1" int   NOT NULL,
    "dictID2" int   NOT NULL,
    "dictID3" int   NOT NULL,
    CONSTRAINT "pk_ExoPlanetHabitable" PRIMARY KEY (
        "habitableID"
     )
);

CREATE TABLE "ExoPlanetDictionary" (
    "dictionaryID" int   NOT NULL,
    "term" varchar(30)   NOT NULL,
    "definition" varchar(255)   NOT NULL,
    CONSTRAINT "pk_ExoPlanetDictionary" PRIMARY KEY (
        "dictionaryID"
     )
);

ALTER TABLE "ExoPlanet" ADD CONSTRAINT "fk_ExoPlanet_explanetAttributesID" FOREIGN KEY("explanetAttributesID")
REFERENCES "ExoPlanetSizeAttributes" ("explanetAttributesID");

ALTER TABLE "ExoPlanet" ADD CONSTRAINT "fk_ExoPlanet_stellarAttributesID" FOREIGN KEY("stellarAttributesID")
REFERENCES "ExoPlanetStellarAttrributes" ("stellarAttributesID");

ALTER TABLE "ExoPlanet" ADD CONSTRAINT "fk_ExoPlanet_habitableID" FOREIGN KEY("habitableID")
REFERENCES "ExoPlanetHabitable" ("habitableID");

ALTER TABLE "ExoPlanetSizeAttributes" ADD CONSTRAINT "fk_ExoPlanetSizeAttributes_dictID1" FOREIGN KEY("dictID1")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetSizeAttributes" ADD CONSTRAINT "fk_ExoPlanetSizeAttributes_dictID2" FOREIGN KEY("dictID2")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetSizeAttributes" ADD CONSTRAINT "fk_ExoPlanetSizeAttributes_dictID3" FOREIGN KEY("dictID3")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetSizeAttributes" ADD CONSTRAINT "fk_ExoPlanetSizeAttributes_dictID4" FOREIGN KEY("dictID4")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetSizeAttributes" ADD CONSTRAINT "fk_ExoPlanetSizeAttributes_dictID5" FOREIGN KEY("dictID5")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetStellarAttrributes" ADD CONSTRAINT "fk_ExoPlanetStellarAttrributes_dictID1" FOREIGN KEY("dictID1")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetStellarAttrributes" ADD CONSTRAINT "fk_ExoPlanetStellarAttrributes_dictID2" FOREIGN KEY("dictID2")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetStellarAttrributes" ADD CONSTRAINT "fk_ExoPlanetStellarAttrributes_dictID3" FOREIGN KEY("dictID3")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetStellarAttrributes" ADD CONSTRAINT "fk_ExoPlanetStellarAttrributes_dictID4" FOREIGN KEY("dictID4")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetHabitable" ADD CONSTRAINT "fk_ExoPlanetHabitable_dictID1" FOREIGN KEY("dictID1")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetHabitable" ADD CONSTRAINT "fk_ExoPlanetHabitable_dictID2" FOREIGN KEY("dictID2")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

ALTER TABLE "ExoPlanetHabitable" ADD CONSTRAINT "fk_ExoPlanetHabitable_dictID3" FOREIGN KEY("dictID3")
REFERENCES "ExoPlanetDictionary" ("dictionaryID");

