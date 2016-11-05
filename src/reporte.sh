
#!/bin/bash

REPORTE=reporte-`date +%Y%m%d`.log

echo "Reporte generado por $USER:" > $REPORTE
echo " " >> $REPORTE 
echo " " >> $REPORTE

echo "##################################################" >> $REPORTE
echo "Interfaces disponibles en el servidor" >>$REPORTE
echo "##################################################" >> $REPORTE
echo " " >> $REPORTE

ifconfig >> $REPORTE

echo "##################################################" >> $REPORTE
echo "Interfaces disponibles del servidor" >> $REPORTE
echo "###################################################" >>$REPORTE

netstat -latup | grep LISTEN
