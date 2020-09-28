n = 123
step = 0
nums = [str(n)]

while n != 1:
    print("Step: {:d} -> {:d}".format(step, n))
    if n % 2 == 0:
        n = int(n / 2)
    else:
        n = int(3 * n + 1)
    nums.append(str(n))
    step = step + 1

print("Step: {:d} -> {:d}".format(step, n))

print(", ".join(nums))
