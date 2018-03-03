name = raw_input('Ready: ')
while name != 'Done':
    with open('capitals.txt', 'r') as f:
        i = 0
        for line in f:
            stripped = line.rstrip()
            sline = stripped.split(", ")
            if sline[0] == name:
                print(sline[1])
                i = 1
            elif sline[1] == name:
                print(sline[0])
                i = 1
        if (i != 1):
            print("nil")
        name = raw_input('Ready: ')

    f.close()
