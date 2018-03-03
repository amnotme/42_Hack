import sys
from collections import defaultdict
# def dictionary():
#     memorize=defaultdict(list)
#     with open("capitals.txt", "r") as f:
#         for line in f:
#             arr=line.split()
#             memorize[arr[0]].append(arr[1])
#         for state in memorize:
#             state=raw_input("Ready: ")
#             if len(memorize[state]) > 1:
#                 print(memorize[state])
#     f.close()
#dictionary()
with open("capitals.txt", "r") as f:
    memorize = defaultdict(list)
    for line in f:
        arr = line.split()
        memorize[arr[0]].append(arr[1])
    for name in memorize:
        state = raw_input("Ready: ")
        print(state)
        print(memorize[state])
    f.close()