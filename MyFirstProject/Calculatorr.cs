using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyFirstProject
{
    public class Calculatorr
    {
        public double Add(double val1, double val2) {
            double result = val1+val2;
            return result;
        }

        public double Substract(double val1, double val2)
        {
            double result = val1 - val2;
            return result;
        }
        public double Multiply(double val1, double val2)
        {
            double result = val1 * val2;
            return result;
        }
        public double Divide(double val1, double val2)
        {
            double result = val1 / val2;
            return result;
        }
        public double SquareArea(double side) {
            double area = side * side;
            return area;
        }
        public double RectArea(double length,double breadth)
        {
            double area = length * breadth;
            return area;
        }
    }
    public class Circle {

        double radius;
        public Circle(double radius) {
            this.radius = radius;
        }
        public double getCircleArea() {
            double area = 3.14 * radius * radius;
            return area;
        }
        
    }
}