# Import the extension module hello.
import pyximport
import time
pyximport.install()
import hello


# Call the print_result method
print('It will test the speed of summing 100_000_000, so umm, wait a bit\nMy testing indicated a huge difference')
hello.print_result(23.0)
before = time.time()
s: int = 0
for i in range(100_000_000):
    s += i
print(f'test speed python: {time.time()-before:.02f}s')