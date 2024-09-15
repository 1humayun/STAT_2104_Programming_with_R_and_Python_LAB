import math

# (i) Circumference and Area of a Circle
def circle_properties(radius):
    circumference = 2 * math.pi * radius
    area = math.pi * radius ** 2
    return circumference, area

# (ii) Area of a Triangle (using base and height)
def triangle_area(base, height):
    return 0.5 * base * height

# (iii) Area of a Rectangle
def rectangle_area(length, width):
    return length * width

# Circle with radius 5
circ, area_circle = circle_properties(5)
print(f"Circumference of the circle: {circ:.2f}")
print(f"Area of the circle: {area_circle:.2f}")

# Triangle with base 6 and height 8
area_triangle = triangle_area(6, 8)
print(f"Area of the triangle: {area_triangle:.2f}")

# Rectangle with length 7 and width 4
area_rectangle = rectangle_area(7, 4)
print(f"Area of the rectangle: {area_rectangle:.2f}")
