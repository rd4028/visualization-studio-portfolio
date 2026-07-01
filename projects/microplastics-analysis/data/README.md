# Data Summary

The project data is embedded inside the Tableau packaged workbooks in [artifacts/tableau-workbooks](../artifacts/tableau-workbooks/). The data is not duplicated here to keep the repository smaller and to avoid publishing unnecessary class dataset extracts outside the workbook context.

## Embedded Dataset Summary

| Workbook | Embedded Data | Rows | Columns | Main Fields |
| --- | --- | ---: | ---: | --- |
| `dataset-2-individual-part-question-1.twbx` | `shaped_2nd_data.csv` | 2,128 | 41 | Region, state/territory, organism, polymer category, polymer type, potential source, anthropogenic microdebris, area, fish, crab, octopus, prawn, crustacean larvae |
| `dataset-3-individual-part-question-2.twbx` | `shaped_3rd-_suppot_data.csv` | 494 | 12 | Colour, polymer, polymer code, tissue, edible tissue, length, sample weight, valid microplastic |
| `dataset-5-individual-part-question-2.twbx` | `shaped_5th_Dataset.csv` | 131 | 6 | Body part/system, health effects, organism, polymer code, references, microplastic size |
| `dataset-3-and-5-individual-part-question-2.twbx` | Dataset 3 and Dataset 5 | 494 plus 131 | 12 and 6 | Combined tissue exposure and health-effect context |

## Data Preparation Notes

- Dataset 2 required splitting the `Potential Source` field and pivoting organism-related columns.
- Dataset 3 was used for seafood tissue, polymer, and edible tissue analysis.
- Dataset 5 supported health-effect and body-system analysis.
- Dataset 3 and 5 were combined to connect exposure data with health-impact context.

## Sharing Note

The Tableau workbooks are included as project evidence. Before making this repository public, confirm that the embedded class datasets are allowed to be shared publicly.

