# Palau eDNA Analysis Project

## Description

This repository has two purposes: 

1) Template for eDNA analysis and visualization
2) House current analysis versions

The motivation is to standardize and document data analysis of ongoing eDNA monitoring in Palau. The aim is to reduce capacity required to analyize data and make workflow reproducible over monitoring efforts. We aim to prevent the loss of knowledge and proceedure as monitoring project grows and ages. 

## Table of Contents

- [Repository overview](#repository-overview)
- [Installation](#installation)
- [Credits](#credits)
- [License](#license)

## Repository overview

The directory structure and files:

```bash
├── data
│   ├── raw
│   └── processed
├── images
├── products
├── renv
│   ├── activate.R
│   └── setttings.json
├── scripts
│   └── color_palette.R
├── .Rprofile
├── .gitignore
├── PalaueDNA.Rproj
├── PalaueDNA_analysis_Nov2021.qmd
├── PalaueDNA_analysis_template.qmd
├── PalaueDNA_analysis_template.html
├── README.md
└── renv.lock
```

Folder descriptions:

- `data/` contains 2 subfolders:  `raw/` and `processed/`.
  - put your data in the `raw/` folder
  - the analysis code will produce data products that are saved into the `processed/` folder
- `products/` folder contains figures and maps created and saved by the analysis
- `renv/` stores the project package version control
  - do not need to directly interact with these files - they are used in several `renv::` package commands
- `scripts/` folder contains short pieces of R code that do specific things (i.e. scripts)
  - can be run within the analysis
 
File Descirptions:

- `.Rprofile` stores Rstudio preferences for running code (hidden file)
- `.gitignore` list of file that git will not pay attention to or track
- `PalaueDNA.Rproj` R project container all code and files run in this mini environment
- `PalaueDNA_analysis_[...].qmd` Analysis files for specific sampling events (MonthYear)
- `PalaueDNA_analysis_template.qmd` Template for analysis and visualization. Make a copy of this file and rename copy to start a new analysis. Update this file to make changes for future analyses.
- `PalaueDNA_analysis_template.html` The rendered output created by `PalaueDNA_analysis_template.qmd` for easy reference of report. Need to open in browser window
- `README.md` contains project description and instruction in markdown
- `renv.lock` record of package dependencies and versions used to construct this project. 

## Installation

1) Copy this repository to your local machine (choose one method/bullet)
  - Download Software from Zenodo --> [paste future DOI badge here]
  - In the command line:
```bash
# run in command line shell
git clone https://github.com/closek/Palau-eDNA-Project.git
cd yourprojectname
```
  -  Github webpage `Repo URL`:
      - click green `<> Code` tab with drop down menu, select `Local` tab, click `Download ZIP`
      - open `.zip` file on local computer

3) Open `.Rproj` in Rstudio or your R environment of choice
4) Install `renv` if not already installed (usually a one-time setup on a new system:
```
# Run in R console
install.packages("renv")
```
5) Activate `renv` project environment
     - ensures that `renv` is actively managing the library paths for your project.
```
# Run in R console
renv::activate()
```

6) Restore Dependencies
     - install project dependencies as specified in the `renv.lock` file and installs the exact versions of the packages that the project depends on
```
# Run in R console
renv::restore()
```
7) Work with project
     - after these steps, your copy of the analysis R environment should be sest up with all the necessary packages and you can start working on the project.
     - The initial activation and restoration manual steps taken above will only be needed to set up the project for the first time

We used the `renv` package to manage & record package versions. This records the version of R, package versions, and their dependencies into a file `renv.lock` at the root of this `.Rproj`. The purpose of this is to allow users on different computer setups and in the future to reproduce the results of this project in the same way. This is because different package versions can behave differently version to version, and even introduce errors or produced different results. By using the same exact set of package versions that the authors used to write the code, the same results can be reproduced and prevent unintended errors.

`Renv` creates a separate custom project library that is separate from the system library typically used when the `library()` function is called. This means that when you recreate the `renv` project library by calling `renv::restore()` you will likely need to install many packages. Many may be already installed in your system library, but they will need to be installed again into this custom `renv` project library with the exact version recorded in the `renv.lock` file. All files, folders, and scripts within the `.Rproj` will share the `renv` project library.

- For more information about `renv` and how to add/update the `renv` project library -> [https://rstudio.github.io/renv/articles/renv.html ](https://rstudio.github.io/renv/articles/renv.html).
- *Note* You may need to download a different version of R to work with this project
  - Windows --> [https://cran.r-project.org/bin/windows/base/old/](https://cran.r-project.org/bin/windows/base/old/)
  - MacOS --> [https://cran-archive.r-project.org/bin/macosx/](https://cran-archive.r-project.org/bin/macosx/)

## Credits

This analysis template is a collaboration between [@closek](https://github.com/closek), [@theamarks](https://github.com/theamarks), and the [Palau International Coaral Reef Center](https://picrc.org/)

## License

MIT License

Copyright (c) 2023 Collin Colsek & Althea Marks

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
