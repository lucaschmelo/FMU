contador = 0
acumulador = 0

numero = int(input("Quantas pessoas compraram o produto X?"))

for i in range (numero):
    preco = float(input("Digite o preço pago no produto X: \n"))
    acumulador += preco
    if preco> 80:
        contador += 1

media = acumulador / numero
print (f"\nO valor médio é {media:.2f}\n")        
print (f"\n{contador} pessoa(s) pagaram mais do que R$80,00 no produto X.\n")

