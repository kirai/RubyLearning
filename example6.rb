# Learning the hacker way to see the methods available in a class
a = "I'm a String, what makes me different from Object?"

#Prints the available methods 
p (a.methods - Object.instance_methods).sort
