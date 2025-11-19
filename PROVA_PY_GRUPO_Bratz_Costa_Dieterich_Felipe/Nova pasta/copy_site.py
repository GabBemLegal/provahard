import os
import zipfile
import shutil
import webbrowser

# Caminho do ZIP contendo o site
ZIP_FILE = "provahard.zip"

# Pasta destino no XAMPP
DESTINO = r"C:\xampp\htdocs\sys_rast_log"

def extrair_zip(arquivo_zip, destino_temp="temp_site"):
    """Extrai o conteúdo do arquivo ZIP para uma pasta temporária."""
    print("Extraindo arquivos...")
    with zipfile.ZipFile(arquivo_zip, 'r') as zip_ref:
        zip_ref.extractall(destino_temp)
    return destino_temp

def copiar_para_xampp(origem, destino):
    """Copia os arquivos do site para o diretório do XAMPP."""
    print(f"Copiando arquivos para: {destino}")

    # cria a pasta caso não exista
    if not os.path.exists(destino):
        os.makedirs(destino)

    # remove conteúdo antigo para evitar conflitos
    for item in os.listdir(destino):
        item_path = os.path.join(destino, item)
        if os.path.isfile(item_path):
            os.remove(item_path)
        else:
            shutil.rmtree(item_path)

    # copia novos arquivos
    for item in os.listdir(origem):
        src_item = os.path.join(origem, item)
        dst_item = os.path.join(destino, item)
        if os.path.isdir(src_item):
            shutil.copytree(src_item, dst_item)
        else:
            shutil.copy2(src_item, dst_item)

def abrir_navegador():
    """Abre o index no navegador."""
    url = "http://localhost/sys_rast_log/index.php"
    print(f"Abrindo no navegador: {url}")
    webbrowser.open(url)

def main():
    temp_dir = extrair_zip(ZIP_FILE)

    # A estrutura do ZIP é provahard/
    site_folder = os.path.join(temp_dir, "provahard")

    copiar_para_xampp(site_folder, DESTINO)

    abrir_navegador()

    # apaga a pasta temporária
    shutil.rmtree(temp_dir)
    print("Finalizado com sucesso!")

if __name__ == "__main__":
    main()
