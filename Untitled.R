p.hats <- predict.glm(train.glm, newdata = testData, type = "response")

survival <- vector()
for(i in 1:length(p.hats)) {
  if(p.hats[i] > .5) {
    survival[i] <- 1
  } else {
    survival[i] <- 0
  }
}

kaggle.sub <- cbind(PassengerId,survival)
