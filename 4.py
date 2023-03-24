# % of the parts

total = 0

state, _, value = input().split(' ')

states = {}

#reads until blank line
while True:
    value = value[2:].replace('.', '').replace(',', '.')
    value = float(value)
    states[state] = value
    total += value
    try:
        state, _, value = input().split(' ')
    except:
        break

for state in states:
    value = states[state]
    print (state + ": " + str(value/total * 100.0) + "%")
