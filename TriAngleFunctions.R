##variables for use in this program
vA=c(3,1,12)
vB=c(4,1,4)
Sides = data.frame(vA, vB)
side_c=0
##Functions for this program
#The hypotenuse takes in 2 sides of triangle and returns the 3rd side.
hypotenuse = function(x, y)
{
  sqrt(x ^ 2 + y ^ 2)
}
##this function takes in 3 sides of triangle and returns the inside angles.
Angles = function(a,b,c){
    AngleC = acos((a^2 + b^2 - c^2) / (2*a*b)) * (57.2958)
    AngleB = acos((a^2 + c^2 - b^2) / (2*a*c)) * (57.2958)
    AngleA = acos((c^2 + b^2 - a^2) / (2*c*b)) * (57.2958)
    AllAngles = c(AngleA, AngleB, AngleC)
    return(AllAngles)
}

# loop through the pair of values calculating the angles.

for(i in 1:3){
  side_c = hypotenuse(Sides[i, 1], Sides[i, 2])
  InSideAngles = Angles(Sides[i, 1], Sides[i, 2], side_c)
  print('List of the inside angles of triangle')
  print(InSideAngles)
  print('sum of the inside angles should equal 180')
  print(sum(InSideAngles))
}