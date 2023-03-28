def sortList(xs):
    # Insertion Sort
    for i in range(1, len(xs)):
        j = i
        while j > 0 and xs[j - 1] > xs[j]:
            xs[j], xs[j-1] = xs[j-1], xs[j]
            j -= 1

def main():
    with open("data1.txt", "r") as file:
        data = file.read().split()
        data = [int(d) for d in data]
    
    sortList(data)
    print(data)
    

if __name__ == "__main__":
    main()