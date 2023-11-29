# Palau eDNA Analysis Template

## Description

Provide a short description explaining the what, why, and how of your project. Use the following questions as a guide:

- What was your motivation?
- Why did you build this project? (Note: the answer is not "Because it was a homework assignment.")
- What problem does it solve?
- What did you learn?

## Table of Contents (Optional)

If your README is long, add a table of contents to make it easy for users to find what they need.

- [Installation](#installation)
- [Usage](#usage)
- [Credits](#credits)
- [License](#license)

## Repository overview

Provide an overview of the directory structure and files, for example:

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
## Installation

What are the steps required to install your project? Provide a step-by-step description of how to get the development environment running.
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


We used the `renv` package to manage & record package versions. This records the version of R, package versions, and their dependencies into a file `renv.lock` at the root of this `.Rproj`. The purpose of this is to allow users on different computer setups and in the future to reproduce the results of this project in the same way. This is because different package versions can behave differently version to version, and even introduce errors or produced different results. By using the same exact set of package versions that the authors used to write the code, the same results can be reproduced and prevent unintended errors.

`Renv` creates a separate custom project library that is separate from the system library typically used when the `library()` function is called. This means that when you recreate the `renv` project library by calling `renv::restore()` you will likely need to install many packages. Many may be already installed in your system library, but they will need to be installed again into this custom `renv` project library with the exact version recorded in the `renv.lock` file. All files, folders, and scripts within the `.Rproj` will share the `renv` project library.

For more information about `renv` and how to add/update the `renv` project library -> [https://rstudio.github.io/renv/articles/renv.html ](https://rstudio.github.io/renv/articles/renv.html).


## Usage

Provide instructions and examples for use. Include screenshots as needed.

To add a screenshot, create an `assets/images` folder in your repository and upload your screenshot to it. Then, using the relative filepath, add it to your README using the following syntax:

## Credits

List your collaborators, if any, with links to their GitHub profiles.

If you used any third-party assets that require attribution, list the creators with links to their primary web presence in this section.

If you followed tutorials, include links to those here as well.

## License

The last section of a high-quality README file is the license. This lets other developers know what they can and cannot do with your project. If you need help choosing a license, refer to [https://choosealicense.com/](https://choosealicense.com/).

