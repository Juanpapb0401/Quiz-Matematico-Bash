a=$(( (RANDOM % 10) + 1 ))
b=$(( (RANDOM % 10) + 1 ))
dividendo=$(( a * b ))
divisor=$b
r=$a
i=3
while (( i>0 )); do
  printf "¿Cuánto es %d / %d? " "$dividendo" "$divisor"
  read -r x
  if [[ $x =~ ^[0-9]+$ ]] && (( x == r )); then echo "¡Correcto!"; exit 0; fi
  (( i-=1 ))
  (( i>0 )) && echo "Incorrecto. Te quedan $i intento(s)."
done
echo "No acertaste. La respuesta correcta es: $r"
