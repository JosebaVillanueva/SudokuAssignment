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
# This function must return a list with the information needed to 
# solve the problem.
# (Depending on the problem, it should receive or not parameters)
initialize.problem = function(file){
  estadoinicial <- read.csv(file, header = FALSE, sep=",")
  problem = list()
  problem$state.initial = estadoinicial
  problem$state.final = NULL
  problem$actions.list = 
  return(problem)
}

# =======================================================================
# Must return TRUE or FALSE according with if the action can be done or not
# over the specific state
is.applicable = function (state,action,problem){
  return(TRUE)
}

# =======================================================================
# Must return the state resulting on applying the action over the state
effect = function (state,action){
  result = state
  return(result)
}


# =======================================================================
# Must return TRUE or FALSE according with the state is final or not
# * In case the final state is stablished by a condition, second argument
#   could be omited
is.final.state = function (state,finalstate){
  return(TRUE)
}

# =======================================================================
# Must print the state in console (in a legible way)
to.string = function (state){
  print(TRUE)
}

# =======================================================================
# Return the cost of applying an action over a state
get.cost = function (action,state){
  return(1)
}

# =======================================================================
# (Used for Informed Algorithms)
# Heuristic function used in Informed algorithms
get.evaluation = function(state,problem){
	return(1)
}