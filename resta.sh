a=$(( RANDOM % 101 ))
b=$(( RANDOM % 101 ))
if (( a < b )); then t=$a; a=$b; b=$t; fi
r=$(( a - b ))
i=3
while (( i>0 )); do
  printf "¿Cuánto es %d - %d? " "$a" "$b"
  read -r x
  if [[ $x =~ ^[0-9]+$ ]] && (( x == r )); then echo "¡Correcto!"; exit 0; fi
  (( i-=1 ))
  (( i>0 )) && echo "Incorrecto. Te quedan $i intento(s)."
done
echo "No acertaste. La respuesta correcta es: $r"
