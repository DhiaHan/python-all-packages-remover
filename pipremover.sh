echo $(pip list) >> pkgstorem.txt
python -c """
with open('pkgstorem.txt', 'r') as f : s = f.read().strip().split(' ')[4:]
ready2rem = []
for i, j in enumerate(s):
	if i % 2 == 0:
		ready2rem.append(j)
with open('pkgstorem.txt', 'w') as f:
	f.write('\n'.join(ready2rem))
"""
pip uninstall -r pkgstorem.txt
rm pkgstorem.txt
