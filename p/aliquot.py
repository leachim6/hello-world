def isPowerOfTwo(num):
    return bin(num).count('1') == 1

def aliquot(num):
    if isPowerOfTwo(num):
        return num - 1
    else:
        r = 2
        aliq = 1
        while r * r < num:
            if num % r == 0:
                aliq += r + num//r
            r += 1        
        return aliq        

print (aliquot(int(input("enter number : "))))
