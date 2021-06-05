library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
    navbarPage("Capstone Project - Author: Omar Linares",
               theme = shinytheme("cerulean"),
               tabPanel("Text Prediction",
                        fluidPage(
                            titlePanel("Text Prediction"),
                            sidebarLayout(
                                sidebarPanel(
                                    sliderInput("numPredictions", "Number of predictions:",
                                                value = 3.0, min = 1.0, max = 3.0, step = 1.0),
                                    br(),
                                    textInput("userInput",
                                              "Please enter a word or phrase:",
                                              value =  "",
                                              placeholder = "Enter text here")
                                    
                                ),
                                mainPanel(
                                    h4("Your text:"),
                                    verbatimTextOutput("userSentence"),
                                    br(),
                                    h4("Next possible word:"),
                                    verbatimTextOutput("prediction1"),
                                    verbatimTextOutput("prediction2"),
                                    verbatimTextOutput("prediction3")
                                )
                            )
                        )
               ),
               tabPanel("About this App",
                        h3("About this App"),
                        br(),
                        div("This is a Shiny App that uses a text
                            prediction algorithm to display the next possible 
                            word based on the text entered by the user. Once you
                            enter the text, please wait a moment for the 
                            predicted word to appear. The application will show 
                            you the possible words as soon as it detects that 
                            you have finished writing a word or phrase.",
                            br(),
                            "You can use the slider tool to select from one to 
                            three predictions of the next word. The words will 
                            be displayed in order according to the probability 
                            of being used that has been estimated by the 
                            algorithm",
                            br(),
                            br(),
                            "The source code for this application can be found
                            on GitHub:",
                            br(),
                            a(target = "_blank", href = "https://github.com/omarjlinaresh/DataScience_CapstoneProject_TheJohnsHopkinsUniversityJ",
                              "Next Word Predict")),
                        br()
               )
    )
)