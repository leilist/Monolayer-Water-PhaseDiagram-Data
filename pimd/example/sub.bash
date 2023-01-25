
DEEPMD201HOME=/work/mse-linb/bin/dp201cuda113/
export PATH="$DEEPMD201HOME/bin:$PATH"
MPIEXEC=$DEEPMD201HOME/bin/mpirun
EXEC=$DEEPMD201HOME/bin/lmp

IPI_EXE=$DEEPMD201HOME/bin/i-pi
LMP_EXE=$EXEC

thishost=$(for i in $LSB_HOSTS; do echo $i; done | uniq)
port_num=$RANDOM

echo; echo "///////////////////////////////////////"
echo ">>> >>> hostname of this job: $thishost"
echo ">>> >>> port number: $port_num"
echo "///////////////////////////////////////"; echo

sed -e "s:<address>.*</address>:<address>$thishost</address>:" ipi.xml > ipi.xml.1
sed -e "s/localhost/${thishost}/g" in.lmp.ipi > in.lmp.ipi.1

sed -i "s/port_num/$port_num/g" in.lmp.ipi.1
sed -i "s/port_num/$port_num/g" ipi.xml.1

command_str_ipi="$IPI_EXE ipi.xml.1"
command_str_lmp="$EXEC -in in.lmp.ipi.1"

#################################################################

$command_str_ipi | tee log.ipi  & 
sleeptime=30
echo "Waiting $sleeptime seconds ... ..."
sleep $sleeptime

$command_str_lmp > out 2>&1

bkill $LSB_JOBID


