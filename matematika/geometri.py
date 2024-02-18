# nama file geometri.py sebagai modul geometri
import math


# luas lingkaran
def luasLingkaran(r):
    luas = math.pi*r**2
    return luas


# keliling lingkaran
def kelilingLingkaran(r):
    keliling = 2*math.pi*r
    return keliling

"""
-------------------------------------------------
Ini bagian tambahan untuk mulai modul_latihan4.py
"""
#luas trapesium
def luasTrapesium(a,b,t):
    luas = 0.5 * (a+b) * t
    return luas


def main():
    luastrapesium=luasTrapesium(10,20,5) 
    print(luastrapesium)
    

if __name__=="__main__":
    main()