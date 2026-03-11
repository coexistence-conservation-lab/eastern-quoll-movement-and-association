# **Eastern quoll movement and association**

Here we present the datasets and workflows used for Wilson *et al.* (2025a) "*Everybody needs good neighbours: movement, habitat use, and conspecific association in a reintroduced mesopredator*", published June 2024 in [Biodiveristy and Conservation](https://doi.org/10.1007/s10531-024-02884-z).

## Abstract

As a reintroduction progresses through the establishment, growth, and regulation phases, **density-dependent mechanisms increasingly drive population dynamics**. This can complicate efforts to reinforce these populations if the translocated individuals (**reinforcers**) are excluded, or existing **residents** become displaced. This is especially pertinent for islands and fenced havens, where immigration is only possible by translocation. Conspecific associations offer insights into how these density-dependent mechanisms manifest in space and time.

We investigated how movement, habitat use, and conspecific associations differed between eastern quoll (*Dasyurus viverrinus*) residents and reinforcers at a [conservation-fenced haven](https://www.coexistenceconservationlab.org/mulligans-flat-goorooyarroo-woodland-experiment). We used GPS collars to quantify **distances travelled per night**, **home and core ranges**, **nocturnal (activity)** and **diurnal (denning) habitat use and preference**, and **conspecific associations** over three periods: **baseline** (residents only), **release** (both cohorts), and **settlement** (reinforcers only) over ≤42 days post-release (depending on GPS unit longevity). 

Eastern quolls travelled greater mean distances per night (<2.15 km, x̄ 1.75 km) and had larger home ranges (<251 ha, x̄ 178 ha) during the release period. **Reinforcers had larger home ranges** (249 ha) and **greater overlap with other collared eastern quolls** (115 ha) when compared to residents (range 90 ha, overlap 46 ha). We found **significant habitat preference toward grassland habitat** across all animals and periods. During the settlement period, we found a preference for nocturnal activity in higher understory and south-west facing aspects, and lower movement correlation, sociality, and den sharing between collared eastern quolls. Finally, we found lower den sharing in reinforcers (29%) compared to residents (52%), and for fawn- animals compared to dark-morphs.

Our results revealed **short-term movements, habitat use, and associations at a greater spatio-temporal resolution than has ever been achieved for this species**. Our findings offer important insights into the importance of appropriate habitat and conspecific cueing for reintroductions, and highlight the need to monitor density-dependent mechanisms to inform adaptive management to promote positive outcomes for both reintroductions and reinforcements.

## Repository structure

This repository follows an organised structure for clarity and reproducibility:

### Files

  - `.gitattributes`: repository-specific Git settings 
  - `.gitignore`: lists files and filetypes to be excluded from version control 
  - `LICENSE`: MIT license 
  - `README.md`: project overview 
  - `analyses.Rmd`: R Markdown with analysis workflows 
  - `functions.R`: project-specific functions sourced by `analyses.Rmd`
  - `project.Rproj`: RStudio project file for consistent setup 
  - `tutorial.html`: rendered summary of analyses and results 

### Folders

  - `archive\`: superseded datasets and workflows (if applicable)
  - `input\`: raw and reference datasets (e.g., geospatial files, spreadsheets) 
  - `output\`: output from analyses (e.g., maps, plots, spreadsheets) 
  - `metadata\`: API keys and citation files 

## Licence

Unless otherwise stated, all code in this repository is licensed under the MIT License. We kindly ask that you cite the relevant publication(s) and this repos if you reuse or adapt our code. 