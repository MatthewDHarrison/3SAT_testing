from random import randint, choice
import sys


numFiles = 50
numPropVars = 275 
numClauses = int(500 + (20 * float(sys.argv[1])))
# generates list of valid propositional variables to add to file
propVarsList = []

for i in range(-numPropVars, numPropVars + 1):
    if i != 0:
         propVarsList.append(str(i))
                           
# string versions of variables for file writing
    s_numPropVars = str(numPropVars)
    s_numClauses = str(numClauses)


# create a file with a given name, open it, write the header comment
#   then create a number of clauses using the given propositonal variables
for i in range(numFiles):
    fname = "threeSAT" + str(i) + ".cnf"
    f = open(fname, "w+")
    f.write("c threeSAT problem with " + s_numPropVars + " propositional" +
            " variables and " + s_numClauses + " clauses.\n")
    f.write("p cnf " + s_numPropVars + " " + s_numClauses + "\n")
    for j in range(numClauses):
        var1 = choice(propVarsList)
        var2 = choice(propVarsList)
        var3 = choice(propVarsList)
        f.write(var1 + " " + var2 + " " + var3 + " 0\n")

    f.close()

