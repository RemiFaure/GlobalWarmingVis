Le fichier qui sera utilisé (GlobalTemperatureByCity.csv) sera traité de la manière suivante :
  De nombreux pays et villes seront supprimés de la BDD pour alléger drastiquement le fichier (actuellement trop volumineux pour d3). Pour cela python pourra être utilisé.
  
  Pour les pays et villes restantes, les valeurs null de température seront retirées. Certaines dates resteront
  alors sans température. Deux possibilités alors : soit la visualisation ne sera faite qu'après ces dates,
  soit elles seront tout simplement ignorées (ce qui peut poser problème lorsque des moyennes annuelles sont faites).
