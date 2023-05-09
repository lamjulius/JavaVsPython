import time

def sortList(xs):
    # Insertion Sort
    for i in range(1, len(xs)):
        j = i
        while j > 0 and xs[j - 1] > xs[j]:
            xs[j], xs[j-1] = xs[j-1], xs[j]
            j -= 1

#Leibniz formula
def piEstimate():
    n = 100000000 
    pi = 4 * sum(1 / i for i in range(1 - 2*n, 2*n + 1, 4))

def main():
    with open("Common/data1.txt", "r") as file:
        data = file.read().split()
        data = [int(d) for d in data]
    
    file1 = open("Python/pyresult.txt","a")
    
    #Clears file each run
    with open("Python/pyresult.txt",'w') as file:
        pass
    
    #Create a copy of data
    copy = []
    def dataToCopy(copy):
        for i in range(len(data)):
            ints = data[i]
            copy.append(ints)
    
    for i in range(600):
        dataToCopy(copy)
        t0 = time.time_ns()
        sortList(copy)
        #piEstimate()
        t1 = time.time_ns()
        time1 = (t1 - t0) / 1000000 #Miljoner nanosekunder? Millisekund?
        file1.write(str(i + 1) + "," + str(time1) + "\n")
        copy = []
    
    print("Python ran successfully!")
if __name__ == "__main__":
    main()