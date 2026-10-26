# print "name: normalized default script" for each entry of a .prf (old or new format)
import sys,re
s=open(sys.argv[1],encoding='latin-1').read()
starts=[m.start() for m in re.finditer(r'^ \(', s, re.M)]+[len(s)]
for a,b in zip(starts,starts[1:]):
    e=s[a:b]; name=re.match(r' \(\|?([^ |]+)',e).group(1)
    m=re.search(r'\("" ', e)
    if not m: print(name, 'NOSCRIPT'); continue
    i=m.start(); d=0; j=i
    while True:
        c=e[j]
        if c=='"':
            j+=1
            while e[j]!='"': j+= 2 if e[j]=='\\' else 1
        elif c=='(': d+=1
        elif c==')':
            d-=1
            if d==0: break
        j+=1
    sc=e[i:j+1].upper().replace('|','')
    sc=re.sub(r'\bNIL\b','',sc); sc=re.sub(r'\s+','',sc)
    print(name, sc)
