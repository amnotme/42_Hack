def main():
    a = [False,True,True,None,True,None,None,False,False,None,True,False]
    b = ['or','or','or','==','!=','==','and','==','!=','and','!=','and']
    c = [False,False,None,None,True,True,False,True,None,False,True,None]
    bb = []
    for i in b:
        if b[int(i)] == 'or':
            bb[int(i)] = '|'
        elif b[int(i)] == 'and':
            bb[int(i)] = '&'
        else:
            bb[int(i)] = b[int(i)]
    for i in range(12):
        print("{} {} {} = {}".format(a[i],bb[i],c[i]))
main()
