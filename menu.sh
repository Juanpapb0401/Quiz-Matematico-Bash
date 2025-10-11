
mostrar_menu() {
  echo "QUIZ MATEMÁTICO
1) Problemas de suma
2) Problemas de resta
3) Problemas de multiplicación
4) Problemas de división
9) Salir"
}

es_entero() { [[ $1 =~ ^[0-9]+$ ]]; }

ejecutar() {
  local script="$1"
  if [[ -x "$script" ]]; then
    "./$script"
  else
    echo "Error: $script no existe o no es ejecutable."
  fi
}

while :; do
  mostrar_menu
  printf "Elige una opción: "
  read -r op

  if ! es_entero "$op"; then
    echo "Opción no válida. Debe ser un número."
    continue
  fi

  case "$op" in
    1) ejecutar "suma.sh"  ;;
    2) ejecutar "resta.sh" ;;
    3) ejecutar "multi.sh" ;;
    4) ejecutar "divi.sh"  ;;
    9) echo "¡Hasta luego!"; exit 0 ;;
    *) echo "Opción no válida. Intenta de nuevo." ;;
  esac

  echo
done
