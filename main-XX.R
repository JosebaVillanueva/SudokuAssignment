# =======================================================================
# Names:
# Group Number: 
# Assignment:
# Date:
# =======================================================================
# 1. Rename this file according with: A[Number]_[Group].R 
# 2. Be sure to include, with this template, any necessary files
#    for execution, including datasets (problem.R, methodXXX.R, ...)
# 3. If you use a function of a certain package, do not forget to include the
#    corresponding call to the "library ()" function
# 4. Do not forget to comment on the code, especially those non-trivial commands
#    (remember that part of the rating depends on the cleaning of the code)
# 5. It is strongly recommended to test any implemented function in order to 
#    check for its proper operation
# =======================================================================

# =======================================================================
# Configuring the Environment
rm(list=ls())
cat("\014")
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
getwd()
dir()

# LIBRARIES (add any needed library here)
library(rstudioapi)
library(ggplot2)
library(gridExtra)

# ADDITIONAL FUNCTIONS (add any used method here)
source("problems/problem-sudoku-XX.R")
source("methods/misc-1 Analyze Results.R")
source("methods/misc-2 Plot Results.R")
source("methods/method-1 Breadth.First.Search.R")
source("methods/method-3 Breadth.First.Search.GS.R")
source("methods/method-4 Depth.First.Search.R")
source("methods/method-5 Depth.First.Search.GS.R")

# =======================================================================
# Check the proper operation of implemented function here!



# =======================================================================
# Initialization of the problem (This is a general code, you must addapt it)

problem   = initialize.problem("data/sudoku-1.txt")
limit     = 2500

bfs       = Breadth.First.Search(problem, limit)
bfs.gs    = Breadth.First.Search.GS(problem, limit)
dfs       = Depth.First.Search(problem, limit)
dfs.gs    = Depth.First.Search.GS(problem, limit)

all       = list(bfs, bfs.fs, dfs, dfs.gs)
results   = analyze.results(all)
results

