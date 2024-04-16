
## Data in Brief | Journal | ScienceDirect.com by Elsevier [![Project Status: Active - The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](https://www.sciencedirect.com/journal/data-in-brief) [![article in Data in Brief analysis.](https://www.bibliometrix.org/JOI-badge.svg)]()

https://static.wixstatic.com/media/b66912_c12854510e4b459a98d640f6ac7e8e48~mv2.png

- [Description](#description)
  - [Objective](#objective)
  - [Data Contents](#data-contents)
  - [Significance](#significance)
- [Metadata Description and Script](#metadata-description-and-script)
  - [all.txt](#1-alltxt)
  - [Quimica.xlsx](#2-quimicaxlsx)
  - [PlotCarbonStatistic.r](#2-PlotCarbonStatisticr)
- [Main Authors’ references](#main-authors-references)

# Description

This repository contains a comprehensive dataset focused on soil organic carbon and its role in mitigating climate change through carbon sequestration on agricultural lands in Rio Verde, GO, Brazil. With the global imperative to reduce anthropogenic CO2 emissions, our data highlights the effectiveness of no-till agricultural practices in both improving soil quality and enhancing carbon storage. This collection represents extensive soil and biomass sampling from five distinct areas within the Cerrado region, utilizing three priority management systems:

No-till with soybean and maize in sequence under rainfed conditions.
No-till with soybean and maize in sequence with central pivot irrigation.
First and second cuts of sugarcane.
The samples were meticulously collected post-harvest and used to estimate both soil biomass accumulation and carbon stock indices. A thorough analysis of the soil's physicochemical parameters was conducted for the 0-20 cm soil profile in each area. This dataset not only provides a valuable resource for studying the impact of different no-till practices on carbon sequestration but also serves as a critical input for modeling future contributions of conservation management systems to carbon trading markets.

## Objective

The primary goal of this repository is to contribute to the growing body of knowledge regarding sustainable agricultural practices and their role in climate change mitigation. By providing open access to data on soil organic carbon stocks and related carbon credits from long-term no-till management systems, we aim to support further research and policy-making that promotes carbon conservation in agricultural settings.

## Data Contents

Soil organic carbon measurements for various no-till systems.
Biomass accumulation data post-harvest.
Carbon stock indices derived from biomass samples.
Detailed physicochemical profiles of soil samples.

## Significance

This dataset is pivotal for researchers and policymakers focusing on the potentials of agricultural carbon sequestration and its implications for carbon trading schemes. It offers insights into the current contributions of no-till conservation management systems and aids in the development of future strategies to enhance carbon storage on farmlands.


# Metadata Description and Script
This repository contains two key data files that encapsulate diverse aspects of soil physicochemical parameters, biomass accumulation, and carbon credit generation across different management systems in Rio Verde, GO, Brazil. Below are descriptions of each file's contents and structure.

##  all.txt
This text file presents aggregated data from various sites under different agricultural management systems. Each row in the dataset represents measurements from distinct sample plots, with the following fields:

- `Sites` - Identifier for the plot location.
- `SB` - Soil bulk density (g/cm³). 
- `SOC` - Soil organic carbon (%).
- `Stock` -  Carbon stock (ton/ha). 
- `Biomass` - Biomass accumulation (ton/ha).
- `Credits` - Estimated carbon credits (ton CO2 equivalent/ha). 

## Quimica.xlsx
This Excel file provides detailed physicochemical analyses of soil samples from different management zones in the study area. The data is structured to support in-depth analysis of soil characteristics influencing carbon sequestration capabilities. Each sheet in the workbook corresponds to a specific area, with columns typically representing:

- `pH` - Soil pH, indicating the acidity or alkalinity.
- `EC` - Electrical conductivity (dS/m).
- `Cation Exchange Capacity (CEC):` - (meq/100g).
- `Organipont c Matter:` - (%).
- `NPK levels` - Concentrations of Nitrogen (N), Phosphorus (P), and Potassium (K).

## PlotCarbonStatistic.r
Main R script that processes and analyzes soil data, including calculations of bulk density, organic carbon content, carbon stocks, biomass, and carbon credits.

# Main Authors’ references
