###this script should be inside of "runVasp/" folder, with the other POSCARs* folders

runVaspFolder=$PWD
echo $runVaspFolder
file="../justPOSCARs/foldersToCreate"


while IFS= read -r line
do
   cd $runVaspFolder/$line
   rm a.out
   rm CHG
   rm CHGCAR
   rm CONTCAR
   rm Co_POTCAR
   rm Ni_POTCAR
   rm Ti_POTCAR
   rm DOSCAR
   rm EIGENVAL
   rm getKPoints
   rm OSZICAR
   rm outcar.txt
   rm PCDAT
   rm REPORT
   rm vasprun.xml
   rm WAVECAR
   rm XDATCAR
   pwd
   cd $runVaspFolder
done <"$file"

echo "I finished erasing."


