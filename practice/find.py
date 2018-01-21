f = open("names.txt", "r");
lines = {};
lines = f.readlines();
names = {};
for value in lines:
    for key in lines:
        if key:
            names[key] = value;
print names
f.close()
