import matplotlib.pyplot as plt


numClauses = []
time = []

for i in range(300, 3000, 27):
    numClauses.append(i)

with open('testTimes.txt') as myFile:
    for line in myFile:
        time.append(line.rstrip('\n'))

myFile.close()
plt.plot(numClauses, time)
plt.savefig("plot1.png")
print('success!')

