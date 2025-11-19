import os
import zipfile
import shutil
import subprocess
import sys
import webbrowser

ZIP_FILE = "provahard.zip"


# ============================================================
# Função genérica para extrair o ZIP
# ============================================================
def extrair_zip(arquivo_zip, destino="temp_extract"):
    if os.path.exists(destino):
        shutil.rmtree(destino)

    print("Extraindo arquivos...")
    with zipfile.ZipFile(arquivo_zip, 'r') as zip_ref:
        zip_ref.extractall(destino)

    return destino


# ============================================================
# 1. EXECUTAR main.py
# ============================================================
def executar_main():
    pasta = extrair_zip(ZIP_FILE)

    caminho_main = os.path.join(pasta, "provahard", "console","main.py")

    if not os.path.exists(caminho_main):
        print("\n❌ ERRO: main.py não foi encontrado dentro do ZIP!")
        return

    print("\nExecutando main.py...\n")
    subprocess.call([sys.executable, caminho_main])

    shutil.rmtree(pasta)


# ============================================================
# 2. INSTALAR SITE NO XAMPP E ABRIR NO NAVEGADOR
# ============================================================
DESTINO_XAMPP = r"C:\xampp\htdocs\sys_rast_log"

def instalar_site():
    pasta = extrair_zip(ZIP_FILE)

    site_folder = os.path.join(pasta, "provahard")

    print(f"\nCopiando site para: {DESTINO_XAMPP}")

    if not os.path.exists(DESTINO_XAMPP):
        os.makedirs(DESTINO_XAMPP)

    # limpar pasta antigo
    for item in os.listdir(DESTINO_XAMPP):
        path_item = os.path.join(DESTINO_XAMPP, item)
        if os.path.isdir(path_item):
            shutil.rmtree(path_item)
        else:
            os.remove(path_item)

    # copiar site novo
    for item in os.listdir(site_folder):
        src = os.path.join(site_folder, item)
        dst = os.path.join(DESTINO_XAMPP, item)

        if os.path.isdir(src):
            shutil.copytree(src, dst)
        else:
            shutil.copy2(src, dst)

    print("\n✔ Site instalado com sucesso!")
    print("Abrindo no navegador...")

    webbrowser.open("http://localhost/sys_rast_log/index.php")

    shutil.rmtree(pasta)


# ============================================================
# MENU PRINCIPAL
# ============================================================
def menu():
    while True:
        print("\n=============================")
        print("       MENU PRINCIPAL")
        print("=============================")
        print("1 - Executar main.py")
        print("2 - Instalar/Abrir site Web (index.php)")
        print("0 - Sair")

        op = input("Escolha uma opção: ")

        if op == "1":
            executar_main()

        elif op == "2":
            instalar_site()

        elif op == "0":
            print("Saindo...")
            break

        else:
            print("Opção inválida!")


# ============================================================
# INICIAR PROGRAMA
# ============================================================
if __name__ == "__main__":
    if not os.path.exists(ZIP_FILE):
        print(f"❌ ERRO: O arquivo '{ZIP_FILE}' não foi encontrado!")
        input("Pressione Enter para sair.")
        sys.exit()

    menu()
