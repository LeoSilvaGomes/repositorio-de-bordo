import yaml

# Carregar valores do arquivo YAML
with open('user_info.yaml', 'r') as file:
    try:
        config = yaml.safe_load(file)
    except yaml.YAMLError as exc:
        print(f"Erro ao carregar o arquivo YAML: {exc}")
        exit(1)

title = config.get('title', 'Default Title')
email = config.get('email', 'default@example.com')
description = config.get('description', 'Default Description')
baseurl = config.get('baseurl', '/')
url = config.get('url', 'https://example.com')
github_username = config.get('github_username', 'default_username')
instagram_username = config.get('instagram_username', 'default_username')
site_description_title = config.get('site_description_title', 'Default Site Description Title')
site_description = config.get('site_description', 'Default Site Description')
cor_principal = config.get('cor_principal', '000000')
cor_de_selecao = config.get('cor_de_selecao', '000000')
cor_mouse_sobre = config.get('cor_mouse_sobre', '000000')

# Atualizando arquivo config.yml
with open('_config.yaml', 'r') as file:
    lines = file.readlines()

lines[0] = 'title: ' + str(title) + '\n'
lines[1] = 'email: ' + str(email) + '\n'
lines[3] = '  ' + str(description) + '\n'
lines[4] = 'baseurl: ' + str(baseurl) + '\n'
lines[5] = 'url: ' + str(url) + '\n'
lines[6] = 'github_username: ' + str(github_username) + '\n'
lines[7] = 'instagram_username: ' + str(instagram_username) + '\n'

with open('_config.yaml', 'w') as file:
    file.writelines(lines)



# Atualizando arquivo config.yml
with open('_about/sobre-a-pessoa.md', 'r') as file:
    lines = file.readlines()

lines[1] = 'citation: ' + str(site_description_title) + '\n'
lines[3] = str(site_description) + '\n'

with open('_about/sobre-a-pessoa.md', 'w') as file:
    file.writelines(lines)



# Atualizando estilos
with open('css/main.scss', 'r') as file:
    lines = file.readlines()

lines[19] = '$primary-color: #' + str(cor_principal) + ';\n'
lines[20] = '$selected-color: #' + str(cor_de_selecao) + ';\n'
lines[21] = '$hover-color: #' + str(cor_mouse_sobre) + ';\n'

with open('css/main.scss', 'w') as file:
    file.writelines(lines)
