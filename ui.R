#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(magrittr)
# install.packages('backpipe')
library(backpipe)
# Define UI for application that draws a histogram
# shinyUI(fluidPage(h1('Header 1')))

row1 <-  fluidRow({
  h1('1st row header')
}) # 1 item in this row so no need for list

row2 <- fluidRow({
  list(
    h1("My app"),
    "Virginia",
    "ABC",
    br(),
    "Store",
    strong("prices")
  )
}) # list of items in row 2

shinyUI() %<% 
  fluidPage() %<%
  # insert list of components to be in this list
  list(
    row1, row2
  )

# h1('Header 1') %>% fluidPage() %>% shinyUI()