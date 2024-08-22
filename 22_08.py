Mes = (input("Voce nasceu em qual mes? "));
Dia = int (input("Qual dia? "));
Meses = {"Janeiro": 1, 
         "fevereiro": 2, 
         "marco": 3,
         "abril": 4,
        }
Signo = ["Capricornio", "Aquario", "Peixes", "Aries", "Touro", "Gemeos", "Cancer", "Leao", "Virgem", "Libra", "Escorpiao", "Sagitario"]
Calculo = Mes
if Dia > 21:
    print ("Seu signo e", Signo[Mes])
else:
    Mes -= 1
    print ("Seu signo e", Signo[Mes])



