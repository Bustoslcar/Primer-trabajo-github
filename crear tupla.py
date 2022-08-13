Historial_2=( 23500, 5960 ,2300 ,10200, 8900)
 
def gastos(Historial_2):
    
    cont=0

    for i in range(0,len(Historial_2)):
        if Historial_2[i]>5000:
            cont=cont+1 
    return print("Los gastos superiores a $5000 fueron",cont)

gastos(Historial_2)