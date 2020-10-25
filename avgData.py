# opens threeSATx.cnf files, finds the time, stores times in arrays, and 
#   calculates average
from statistics import mean

myLines = []
with open('timeData.txt') as myFile:
    for myLine in myFile:
        myLines.append(myLine.rstrip("s \n"))

myTimes = []
keyword = "CPU time" 
for i, line in enumerate(myLines):
    if keyword in line:
        myTimes.append(line.lstrip("CPU time: "))

myFile.close()
print(mean(float(i) for i in myTimes))
