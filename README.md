# README

## Introduction

State Populations consumes state population measures by year from a `datausa.io` [API](https://datausa.io/api/data?drilldowns=State&measures=Population) and stores it in a CSV file. This program then performs calculations on the resulting CSV data to discover which US states meet the following statistic criteria between the first and last recorded years: 
  1. Greatest population increase 
  2. Greatest population decrease 
  3. Lowest population increase 
  4. Lowest population decrease 
Users interact with State Populations via a simple CLI.

## Set-Up & Usage

1. Fork this repository and clone it to your local machine in the directory it belongs. 
2. `cd` into the directory and run `bundle install` from the command line. 
3. In order to query the `datausa.io` API and create a CSV file with that info run the following command in your terminal:
```
rake csv:create
```
4. If for any reason you would like to update the state populations data available to you: 
```
rake csv:delete
rake csv:create
```
5. To start the CLI and interact with the program:
```
ruby runner.rb
```

<div align="center">   
    <p>Built with Plain Old Ruby</p>
    <a href="https://www.ruby-lang.org/en/" target="_blank"><img style="margin: 10px" src="https://profilinator.rishav.dev/skills-assets/ruby-original-wordmark.svg" alt="CSS3" height="50" /></a>   
</div>
