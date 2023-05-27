#!/bin/bash

# Solicitar al usuario el primer numero
read -p "Ingresa el primer numero: " num1
# Solicitar al usuario el segundo numero
read -p "Ingresa el segundo numero: " num2

# Mostrar las opciones disponibles
echo "Seleccionar la operacion:"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicacion"
echo "4. Division"

# Solicitar al usuario que elija una opcion
read -p "Ingresa el numero de la operacion que desea realizar:" opcion

# Realizar la operación seleccionada
case $opcion in
  1) resultado=$(($num1 + $num2))
     operacion="suma"
     ;;
  2) resultado=$(($num1 - $num2))
     operacion="resta"
     ;;
  3) resultado=$(($num1 * $num2))
     operacion="multiplicación"
     ;;
  4) resultado=$(echo "scale=2; $num1 / $num2" | bc)
     operacion="división"
     ;;
  *) echo "Opción inválida"
     exit 1
     ;;
esac

# Mostrar el resultado
echo "El resultado de la $operacion es: $resultado"
