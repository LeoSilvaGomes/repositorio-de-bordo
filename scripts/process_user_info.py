import yaml

# Carregar valores do arquivo YAML
with open('user_info.yml', 'r') as file:
    config = yaml.safe_load(file)

title = config['title']
email = config['email']
description = config['description']
baseurl = config['baseurl']
url = config['url']
github_username = config['github_username']
instagram_username = config['instagram_username']
site_description_title = config['site_description_title']
site_description = config['site_description']
cor_principal = config['cor_principal']
cor_de_selecao = config['cor_de_selecao']
cor_mouse_sobre = config['cor_mouse_sobre']

# Atualizando arquivo config.yml
with open('_config.yml', 'r') as file:
    lines = file.readlines()

lines[0] = 'title: ' + str(title) + '\n'
lines[1] = 'email: ' + str(email) + '\n'
lines[3] = '  ' + str(description) + '\n'
lines[4] = 'baseurl: ' + str(baseurl) + '\n'
lines[5] = 'url: ' + str(url) + '\n'
lines[6] = 'github_username: ' + str(github_username) + '\n'
lines[7] = 'instagram_username: ' + str(instagram_username) + '\n'

with open('_config.yml', 'w') as file:
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
