from bitarray import bitarray

n = 600851475143  # Example value; don't use 600851475143 directly or it will still be too large
sieve = bitarray(n + 1)
sieve.setall(True)

sieve[0] = False
sieve[1] = False
# mark all non primes as false, can start at square of each next prime
for i in range(2,  int(n**0.5) + 1):
    for j in range(i*i, n+1, i):
        sieve[j] = False

# filter primes to one list
primes = [i for i, is_prime in enumerate(sieve) if sieve[i]]
print('list of primes found!')

# find the largest prime factor
for prim in list(reversed(primes)):
    if n % prim == 0:
        lgst_prim = prim
        break
print('largest prim factor: ', lgst_prim)
