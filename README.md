
# askiR - Ask ChatGPT to help you with your error messages

<p align="center">
  <img src="https://github.com/askiR-ai/askiR/blob/main/other/askiR.png" width=25% height=25%>
</p>

askiR is a simple R package that integrates OpenAI's ChatGPT into your R environment, allowing you to easily access AI assistance for error messages, code suggestions, and more. This package makes it simple for R users to leverage the power of ChatGPT to enhance their programming experience.

![](https://github.com/askiR-ai/askiR/blob/main/other/example_usage_1.gif)


## Installation of askiR

You can install askiR from [GitHub](https://github.com/askiR-ai/askiR) with:

``` r
# install.packages("devtools")
devtools::install_github("askiR-ai/askiR")
```
## Quick Start
Load the askiR package and set up your OpenAI API key:
``` r
library(askiR)
set_key("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
```
Now you can start using the aski function to interact with ChatGPT!

## Usage
Simply copy your error message to your clipboard, then run: 
```r 
aski()
```
This is a basic example which shows you how to solve a problem:

![](https://github.com/askiR-ai/askiR/blob/main/other/example_usage_2.gif)

Aski defaults to using the contents of your clipboard as input if no input string is provided.

Alternatively, you can directly input the error message as a string into aski:

``` r
aski("Error in ggplot(data, aes(x = x, y = y)) : could not find function ggplot")

```

To ask general questions about R programming or get help with a concept, just enter your question into aski:
``` r
aski("How to perform linear regression in R?")
```
![](https://github.com/askiR-ai/askiR/blob/main/other/example_lm.png)


## Asking askiR to introduce itself
To learn who askiR is, just ask it to introduce itself
``` r
aski("Who are you and what do you do? Please give me an example!")
```

![](https://github.com/askiR-ai/askiR/blob/main/other/about_aski.png)


## About
askiR Development - 2023


