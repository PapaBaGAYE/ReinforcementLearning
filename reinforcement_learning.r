library("ReinforcementLearning")

data("tictactoe")
head(tictactoe, 5)

#environment <- function(state, action){
#  ...
#  return (list("NextState" = newState, "Reward" = reward))
#}

states = c("s1", "s2", "s3", "s4")
actions = c("uo", "down", "left", "right")

env = gridworldEnvironment

data = sampleExperience(N=1000, env=env, states=states, actions=actions)
data

model = ReinforcementLearning(data = tictactoe, s = "State", a = "Action", r = "Reward", s_new = "NextState", iter = 1)
model

control = list(alpha = 0.1, gamma = 0.1, epsilon = 0)

model2 = ReinforcementLearning(data = tictactoe,  s = "State", a = "Action", r = "Reward", s_new = "NextState", iter = 10, control = control)
model2

