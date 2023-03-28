import time

def sortList(xs):
    # Insertion Sort
    for i in range(1, len(xs)):
        j = i
        while j > 0 and xs[j - 1] > xs[j]:
            xs[j], xs[j-1] = xs[j-1], xs[j]
            j -= 1

def main():
    with open("Common/data1.txt", "r") as file:
        data = file.read().split()
        data = [int(d) for d in data]
    
    file1 = open("Python/pyresult.txt","a")
   
    
    copy = []
    for i in range(len(data)):
        ints = data[i]
        copy.append(ints)

    for i in range(10):
        print(copy)
        t0 = time.time_ns()
        sortList(copy)
        t1 = time.time_ns()
        time1 = t1 - t0
        print(copy)
        file1.write(str(i + 1) + "," + str(time1) + "\n")
    

if __name__ == "__main__":
    main()