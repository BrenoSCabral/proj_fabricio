#/bin/sh

#declare -a DataArray=("DRZA")

declare -a DataArray=("SBGL")

echo "Entre com o dia inicial:"
read diaini
echo "Entre com o mes:"
read mes
echo "Entre com o ano:"
read ano
echo "Entre com a quantidade de dias:"
read quant

declare -i dia=$[diaini]
declare -i mes=$[mes]
declare -i ano=$[ano]
declare -i qua=$[quant]


b=0
while [ $b -le 0 ]
do


j=0
while [ $j -le $qua ]
do


Dia=`date +"%d" --date="$mes/$dia/$ano -d +$j day"`
Mes=`date +"%m" --date="$mes/$dia/$ano -d +$j day"`
Ano=`date +"%Y" --date="$mes/$dia/$ano -d +$j day"`


	wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR="$Ano"&MONTH=""$Mes""&FROM="$Dia"12&TO="$Dia"12&STNM="${DataArray[$b]}"" -O "${DataArray[$b]}"_12_"$Ano""$Mes""$Dia".txt



j=$(( j+ 1))


done


b=$(( b+ 1))


done



