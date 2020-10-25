

inputFiles=(threeSAT0.cnf \
            threeSAT1.cnf \
            threeSAT2.cnf \
            threeSAT3.cnf \
            threeSAT4.cnf \
            threeSAT5.cnf \
            threeSAT6.cnf \
            threeSAT7.cnf \
            threeSAT8.cnf \
            threeSAT9.cnf \
            threeSAT10.cnf \
            threeSAT11.cnf \
            threeSAT12.cnf \
            threeSAT13.cnf \
            threeSAT14.cnf \
            threeSAT15.cnf \
            threeSAT16.cnf \
            threeSAT17.cnf \
            threeSAT18.cnf \
            threeSAT19.cnf \
            threeSAT20.cnf \
            threeSAT21.cnf \
            threeSAT22.cnf \
            threeSAT23.cnf \
            threeSAT24.cnf \
            threeSAT25.cnf \
            threeSAT26.cnf \
            threeSAT27.cnf \
            threeSAT28.cnf \
            threeSAT29.cnf \
            threeSAT30.cnf \
            threeSAT31.cnf \
            threeSAT32.cnf \
            threeSAT33.cnf \
            threeSAT34.cnf \
            threeSAT35.cnf \
            threeSAT36.cnf \
            threeSAT37.cnf \
            threeSAT30.cnf \
            threeSAT39.cnf \
            threeSAT40.cnf \
            threeSAT41.cnf \
            threeSAT42.cnf \
            threeSAT43.cnf \
            threeSAT44.cnf \
            threeSAT45.cnf \
            threeSAT46.cnf \
            threeSAT47.cnf \
            threeSAT48.cnf \
            threeSAT49.cnf)
b=0
while [ "$b" -lt 100 ]
do
    bash clean.sh
    python3 tsg.py $b
    a=0
    while [ "$a" -lt 50 ]
    do 
        minisat ${inputFiles[$a]} >> timeData.txt
        echo "done with test " ${inputFiles[$a]}
        a=`expr $a + 1`
    done
    echo "done running tests for b == " $b
    echo "averaging results"
    python3 avgData.py >> testTimes.txt
    echo "results stored in testTimes.txt"
    
    b=`expr $b + 1`
done
