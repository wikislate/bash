echo "Enter Number of rows"
read r
echo "Enter Number of columns"
read c
i=0
[[ $r =~ ^[0-9]+$ && $c =~ ^[0-9]+$ ]] || { echo "ERROR :: Number of rows or columns must be positive integer." ; exit 1 ; }
echo "Enter elements"
until [ $i -eq $((r*c)) ]
do
       read a[$i]
       i=$((i+1))
done
i=0 ;  k=0
echo "Transpose of a Matrix"
until [ $i -eq $c ]
do
       j=0;
       until [ $j -eq $r ]
       do
              n=$((j*c))
              m=$((n+i))
              b[$k]=${a[$m]}
              echo -ne "${b[$k]} \t"
              k=$((k+1))
              j=$((j+1))
       done
       i=$((i+1))
       echo -e "\n"
done

