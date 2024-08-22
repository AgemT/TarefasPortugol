Mes = int (input("Voce nasceu em qual (numero) mes? "));
Dia = int (input("Qual dia? "));
Signo = ["Capricornio", "Aquario", "Peixes", "Aries", "Touro", "Gemeos", "Cancer", "Leao", "Virgem", "Libra", "Escorpiao", "Sagitario"]
Calculo = Mes
if Dia > 21:
    print ("Seu signo e", Signo[Mes])
else:
    Mes -= 1
    print ("Seu signo e", Signo[Mes])


