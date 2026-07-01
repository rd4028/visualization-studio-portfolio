# Methodology

## 1. Group Data Preparation

The group prepared multiple microplastics datasets for Tableau analysis. The preparation work included checking data types, confirming tidy data structure, splitting fields where needed, pivoting organism fields, and creating relationships between datasets through polymer-related fields.

Key preparation activities included:

- Checking data types to support accurate aggregation, sorting, filtering, and comparison.
- Splitting the `Potential Source` field where multiple values were stored together.
- Pivoting organism columns into a more analysis-friendly structure.
- Linking datasets through polymer fields to support cross-dataset analysis.
- Reviewing whether data interpreter, split, pivot, relationship, or union steps were required for each dataset.

## 2. Dataset Coverage

The Tableau workbooks include the following embedded datasets:

| Dataset | Rows | Main Focus |
| --- | ---: | --- |
| Dataset 2 | 2,128 | Australian coastal microdebris observations, organisms, polymer categories, regions, and source fields |
| Dataset 3 | 494 | Seafood tissue, polymer, sample, edible tissue, length, and validity information |
| Dataset 5 | 131 | Polymer health effects by organism, body system, references, and microplastic size |
| Dataset 3 and 5 combined | 494 plus 131 | Combined tissue exposure and health-effect context |

## 3. My Individual Analysis Design

My stakeholder was the Australian Government. I designed the analysis to support practical policy and intervention decisions:

- Where should monitoring and intervention resources be prioritised?
- Which fisheries, regions, species, polymers, and health impacts require closer attention?
- How can visualisations help non-technical decision-makers understand the evidence quickly?

## 4. Visualisation Choices

| Chart Type | Why It Was Used |
| --- | --- |
| Base map | Shows coastal hotspots using location, colour, and marker size |
| Tree map | Compares polymer or fishery categories by contamination size |
| Highlight table | Makes regional and species exposure patterns easy to scan |
| Scatter plot | Creates a priority matrix for prevalence and severity |
| Stacked bar chart | Compares edible and non-edible tissue composition |
| Bubble chart | Shows relationships between organisms, body systems, polymers, and evidence strength |

## 5. Calculated And Derived Fields

The project used calculated and derived fields to make the analysis clearer. One important example was a severity score for health effects:

| Health Impact Category | Severity Score |
| --- | ---: |
| Immune or respiratory impact | 3 |
| Bone impact | 2 |
| Other impact | 1 |

This scoring helped convert qualitative health-effect descriptions into a clearer visual priority framework.

## 6. Pre-Attentive Design

My map visualisation used pre-attentive attributes to help government stakeholders identify hotspots quickly:

- Colour intensity showed higher or lower contamination levels.
- Marker size reinforced severity by making larger values more visible.
- Geographic position helped connect the evidence to real Australian coastal regions.
- Proximity supported recognition of clustered contamination areas.

## 7. Reporting Approach

The final analysis connected Tableau visuals to stakeholder recommendations. The goal was not only to show charts, but to explain what government decision-makers could do with the findings.

