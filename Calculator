#!/bin/bash

# ANSI

RED='\033[31m'
GREEN='\033[32m'
BLUE='\033[34m'
YELLOW='\033[33m'
NC='\033[0m' # Restablecer color


# Solicitar al usuario el primer numero
echo
read -p "$(echo -e "${BLUE}Ingresa el primer numero:${NC} ")" num1
# Solicitar al usuario el segundo numero
echo
read -p "$(echo -e "${BLUE}Ingresa el segundo numero:${NC} ")" num2

# Mostrar las opciones disponibles
echo
echo -e "${RED}Seleccionar la operacion:"
echo -e "1. Suma"
echo -e "2. Resta"
echo -e "3. Multiplicacion"
echo -e "4. Division${NC}"

# Solicitar al usuario que elija una opcion
echo
read -p "$(echo -e "${BLUE}Ingresa el numero de la operacion que desea realizar:${NC} ")" opcion

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
  *)
     echo
     echo -e "${RED}Opción inválida${NC}"
     exit 1
     ;;
esac

# Mostrar el resultado
echo
echo -e "${BLUE}El resultado de la $operacion es:${NC} ${GREEN}$resultado${NC}"
