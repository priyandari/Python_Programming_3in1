# File: modul_paket1.py
import matematika.geometri as gm


def main():
    jari_jari = 49
    luasLink = gm.luasLingkaran(jari_jari)
    luastrapsm = gm.luasTrapesium(5,10,10)
    print(luasLink)
    print(luastrapsm)


if __name__=='__main__':
    main()
