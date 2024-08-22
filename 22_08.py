Mes = (input("Voce nasceu em qual mes? "));
Dia = int (input("Qual dia? "));
Meses = {"Janeiro": 1, 
         "fevereiro": 2, 
         "marco": 3,
         "abril": 4,
         "maio": 5,
         "junho": 6,
         "julho": 7,
         "agosto": 8,
         "setembro": 9,
         "outubro": 10,
         "novembro": 11,
         "dezembro": 12,
        }
Signo = ["Capricornio", "Aquario", "Peixes", "Aries", "Touro", "Gemeos", "Cancer", "Leao", "Virgem", "Libra", "Escorpiao", "Sagitario"]
if Dia > 21:
    print ("Seu signo e", Signo[Meses{Mes}])
else:
    Mes -= 1
    print ("Seu signo e", Signo[Meses{Mes}])



