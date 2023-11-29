# Palau eDNA Analysis Template

## Description

Provide a short description explaining the what, why, and how of your project. Use the following questions as a guide:

- What was your motivation?
- Why did you build this project? (Note: the answer is not "Because it was a homework assignment.")
- What problem does it solve?
- What did you learn?

## Table of Contents

- [Repository overview](#repository-overview)
- [Installation](#installation)
- [Usage](#usage)
- [Credits](#credits)
- [License](#license)

## Repository overview

The directory structure and files:

```bash
├── data
│   ├── raw
│   └── processed
├── products
├── renv
│   ├── activate.R
│   └── setttings.json
├── scripts
│   └── color_palette.R
├── .Rprofile
├── .gitignore
├── Quarto_trial.html
├── Quarto_trial.qmd
├── README.md
└── renv.lock
```

Folder and file descriptions:

- `data/` contains 2 subfolders:  `raw/` and `processed/`.
  - put your data in the `raw/` folder
  - the analysis code will produce data products that are saved into the `processed/` folder
- `products/` folder contains figures and maps created and saved by the analysis
- `renv/` stores the project package version control
  - do not need to directly interact with these files - they are used in several `renv::` package commands
- `scripts/` folder contains short pieces of R code that do specific things (i.e. scripts)
  - can be run within the analysis 

## Installation

1) Clone this repository to your local machine (choose one method)
  - In the command line:
```bash
# run in command line shell
git clone https://github.com/closek/Nov2021.git
cd yourprojectname
```
  OR
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

## Usage

Provide instructions and examples for use. Include screenshots as needed.

To add a screenshot, create an `assets/images` folder in your repository and upload your screenshot to it. Then, using the relative filepath, add it to your README using the following syntax:

## Credits

List your collaborators, if any, with links to their GitHub profiles.

If you used any third-party assets that require attribution, list the creators with links to their primary web presence in this section.

If you followed tutorials, include links to those here as well.

## License

The last section of a high-quality README file is the license. This lets other developers know what they can and cannot do with your project. If you need help choosing a license, refer to [https://choosealicense.com/](https://choosealicense.com/).

