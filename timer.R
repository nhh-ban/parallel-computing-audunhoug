
library(tictoc)
library(doParallel)

tic.clearlog()

# timing the unchanged solution
tic("Unchanged homework solution")
source(":scripts/hw4_solution.r")
toc(log = TRUE)

# rewriting lines 29-35 to use parallel computing
tic("Parallelizing the code")
source(":scripts/hw4_solution 29-35.r")
toc(log = TRUE)

# changing the MTweedieTest function to use more than one core
tic("Using multiple cores")
source(":scripts/hw4_solution Mtweedietest.r")
toc(log = TRUE)

# the final times i got when running the entire script were:
# unchanged script: 45.7 seconds
# paralleizing the code: 43.5 seconds
# changing the function to use more cores: 44.1 seconds

# compared to the lectures these times were very close, so i suspect i might have
# done something wrong. i also have a lot of other programs running at the moment
# so that might explain why the solution using multiple cores didnt make much 
# of a difference.still, both the changed scripts ran just a little faster
# than the unchanged one, so some improvement has happened, even if its marginal