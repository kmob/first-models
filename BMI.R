## Definition of an object BMI
setClass('BMI',slots = c(weight = 'numeric', size = 'numeric'))


setMethod('show', 'BMI',
          function(object){cat('BMI =',object@weight/(object@size^2),'\n')}
          )

setValidity('BMI', 
            function(object){
              if(object@size<0){
                return('negative size isn\'t allowed')
              }else{
                return(TRUE)
              }
            }
            )

hisBMI <- new('BMI', weight = 85, size = 1.84)
test <- new('BMI',weight = 85, size = -1.84)