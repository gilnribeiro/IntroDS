## Introduction to Data Science


| ![](/images/DSKC_logo.png)         |
| :-----: |

### Summary

In this second part of Introduction to Programing course, we will be working with data. This part will be a  practical one and so we will be using an example database.

The data that will be using was extracted from [The World Bank](https://databank.worldbank.org/source/world-development-indicators). The extraction period is from 2000 to the last available date (in most cases 2017). 

A full description of the dataset can be find [here](https://github.com/EduardoHidalgoGarcia/WorldBankData/blob/master/World%20Bank%20Indicators%202000%20-%202018.pdf).

[Github repo](https://github.com/EduardoHidalgoGarcia/IntroDS)

## Agenda

#### April 15

| General Topic | Single topics  | Type | Estimated time  |
| :-----: | :-: | :-: | :-: |
| Datasets | Creating, Reading and Writing | T&E | 30 min |
| Datasets | Indexing, Selecting and Assigning | T&E | 30 min |
| Datasets | Summary Functions and Maps | T&E | 30 min |
| Datasets | Grouping and Sorting | T&E | 30 min |
| Datasets | Data Types and Missing Values | T&E | 30 min |
| Datasets | Renaming and Combining | T&E | 30 min |



#### April 22

| General Topic | Single topics  | Type | Estimated time  |
| :-----: | :-: | :-: | :-: |
| Visualization | plotnine “The grammar of graphics” | T&E | 30 min |
| Intro to ML | Missing Values | T&E | 30 min |
| Intro to ML | Categorical Variables | T&E | 30 min |



#### May 6

| General Topic | Single topics  | Type | Estimated time  |
| :-----: | :-: | :-: | :-: |
| Intro to ML | Logistic Regression | T&E | 30 min |
| Machine Learning | Decision Tree | T&E | 60 min |
| Machine Learning | Base. mod., Perf. metr. & Cr. Val. | Theory | 60 min |
| Machine Learning | Underfitting and Overfitting | T&E | 60 min |
| Machine Learning | Random Forest | T&E | 60 min |


#### Extras

| General Topic | Single topics  | Type | Estimated time  |
| :-----: | :-: | :-: | :-: |
| Machine Learning | Gradient Boosting  (XGBoost) | T&E | 60 min |
| Machine Learning | Magic Loop (compare dif. models) | T&E | 60 min |
| Machine Learning | Artificial Neural Networks (ANN) | T&E | 60 min |


### About the information sources

Below are the links that you can follow to go to the webpages of the courses that serve as basis for the contruction of this Crash Course. They are arrange by topic:

+ Python: [Udemy](https://www.udemy.com/complete-python-bootcamp/?couponCode=COMPLETE_GITHUB)
+ pandas: [Kaggle Course](https://www.kaggle.com/learn/pandas)
+ Intro to ML: [Kaggle Course](https://www.kaggle.com/learn/intro-to-machine-learning)
+ Machine Learning: [Kaggle Course](https://www.kaggle.com/learn/intermediate-machine-learning)
+ plotnine: [Medium](https://towardsdatascience.com/how-to-use-ggplot2-in-python-74ab8adec129)
+ Github: [Youtube](https://www.youtube.com/results?search_query=what+is+github)
+ Logistic regresion: [DataCamp](https://www.datacamp.com/community/tutorials/understanding-logistic-regression-python)
+ Logistic regresion: [ITAM](https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxpdGFtbWFjcm9lY29ub21ldHJpYXxneDpiMjY5ZGZlZWYyM2M2MDE)
+ Performance Metrics: [blog.exsilio.com](https://blog.exsilio.com/all/accuracy-precision-recall-f1-score-interpretation-of-performance-measures/)
+ ROC curve: [Wikipedia](https://en.wikipedia.org/wiki/Receiver_operating_characteristic)
+ XGBoost: [Hackernoon](https://hackernoon.com/want-a-complete-guide-for-xgboost-model-in-python-using-scikit-learn-sc11f31bq)
+ ANN: [Medium](https://medium.com/@sanchittanwar75/introduction-to-neural-networks-660f6909fba9)

### Installation

`pip install -r requirements.txt`

For Windows users please note that it is only possible to download `xgboost` package by using a conda environment. 

Unfortunately, `pip` comand doesn't work for Windows os in that specific package.

**Extras** is the only place where we will use that specific package.