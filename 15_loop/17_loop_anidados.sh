# ! /bin/bash
# Programa para ejemplificar el uso de los loops anidados

echo "Loops Anidados"
for fil in $(ls)
do
    for nombre in {1..4}
    do
        echo "Nombre archivo:$fil _ $nombre"
    done
done


# Para listar las lineas de codigo de cada archivo
for file in $(ls 15_loop/*.sh)
do
	echo "--------------- $file ---------------------"
	while read -r linea; do
		echo "$linea"
	done < "$file"
done
