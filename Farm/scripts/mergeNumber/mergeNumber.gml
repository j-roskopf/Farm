///@description merge_number
///@arg1 first_num
///@arg2 second_num
///@arg3 amount_to_merge

var firstNum = argument0
var secondNum = argument1
var amount = argument2

var diff = firstNum - secondNum
var merged = firstNum - (diff * amount)

return merged