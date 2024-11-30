## ...........i 
def circle_calc(r):
    pi = 3.14
    area = pi*r**2
    circum = 2*pi*r
    return area, circum

def area_triangle(b,h):
    area = 0.5*b*h
    return area

def area_rectangle(a,b):
    area = a*b
    return area

print("Area of circle: ",circle_calc(3.2)[0], "\nCircumference of circle: ",circle_calc(3.2)[1])
print("Area of Triangle: ", area_triangle(2,5))
print("Area of rectangle: ", area_rectangle(2,5))
