a = float(input("Digite o lado A: \n"))
b = float(input("Digite o lado B: \n"))
c = float(input("Digite o lado C: \n"))

if a==b and b==c:
    print ("\nTriângulo Equilátero\n")
elif a==b or b==c or c==a:
    print ("\nTriângulo Isósceles\n")
else:
    print ("\nTriângulo Escaleno\n")
