import UIKit

var r1 = 5
var r2 = 4
let pi = 3

/// calucatiing the area of the given circle
/// param r = radius
func squareArea(r:(Int)) -> (String,Int){
    return ("Area of the circle is ",pi*r*r )
}

///calculating the perimeter of the circile
///param = radius
func squarePerimeter(r:(Int)) -> (String,Int){
    
    return ("Perimeter of the circile is ", 2*pi*r)
}

squareArea(r:r1)
squarePerimeter(r: r1)

//--------//

var numbers = [2,5,3,8,7,6,9,4]

var evenNumbers = [Int]()
var oddNumbers = [Int]()


/// function to seperate even and odd numbers in an array

func seperateNumbers(numbers: [Int]){
    for number in numbers {
        if(number % 2 == 0){
            evenNumbers.append(number)
        }
        else{
            oddNumbers.append(number)
        }
    }
}

seperateNumbers(numbers: numbers)
evenNumbers
oddNumbers

/// creating a list to store grade of the students
var grades : [String:Int] = [:]

grades["ali"] = 70
grades["veli"] = 60
grades["ayşe"] = 90
grades["fatma"] = 80

func averageGrade(grades: [String:Int])->(String,Int){
    var avarage = 0
    for grade in grades {
       avarage += grade.value
    }
    return ("The avarage of the class is",avarage / grades.count)
}
averageGrade(grades: grades)

/// phone struct
struct Phones{
    var name : String
    var cost : Int
    var model : String
    
    init(name : String ,cost : Int, model : String) {
        self.name = name
        self.cost = cost
        self.model = model
    }

}

/// creating an array which store the phones in an array

var phone1 = Phones(name: "samsung", cost: 2000, model: "a70")

var phone2 = Phones(name: "iphone", cost: 6000, model: "5s")

var phone3 = Phones(name: "xomia", cost: 4000, model: "redmi10")

var storePhones : [Phones] = [phone1,phone2,phone3]

/// function to print all the phone in store

func listPhones(storePhones : [Phones]) {
    for phone in storePhones{
        print(" phone name :" ,phone.name ," model :", phone.model, " cost : " ,phone.cost)
    }
}

listPhones(storePhones: storePhones)

class Aliens {
    var name :String
    var power : Int
    init(name : String , power : Int) {
        self.name = name
        self.power = power
    }
}

class Humans {
    var name : String
    var power : Int
    
    init(name : String , power : Int) {
        self.name = name
        self.power = power
    }
}

/// creating aliens and creating an array to store aliens

var alien1 = Aliens(name: "alien1", power: 4)
var alien2 = Aliens(name: "alien2", power: 8)
var alien3 = Aliens(name: "alien3", power: 6)

var aliens:[Aliens] = [alien1 , alien2 , alien3]

/// crating humans and creating an array to store humans

var human1 = Humans(name: "ally", power: 5)
var human2 = Humans(name: "mark", power: 6)
var human3 = Humans (name: "john", power: 4)

var humans:[Humans] = [ human1 , human2,human3]

func war(aliens:[Aliens], humans:[Humans]) -> (String , String,String) {
    for human in humans{
        for alien in aliens {
            if( alien.power > human.power){
               print (human.name ," cant defeat" , alien.name)
            }
            
            else{
               print(human.name ," can defeat" , alien.name)
            }
        }
    }
    return ("" ," " , "")
}

war(aliens: aliens, humans: humans)

