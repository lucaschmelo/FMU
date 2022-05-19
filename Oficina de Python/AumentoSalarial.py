i = 1

while i <= 5:
    salario = float(input("Digite seu salário: \n"))
    if salario < 1000:
        print (f"Seu novo salário é R$ {salario * 1.30:.2f}")
    else:
        print ("\nVocê não tem direito a aumento salarial\n")
    i += 1   

