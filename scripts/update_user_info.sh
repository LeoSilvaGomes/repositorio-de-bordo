file_path="user_info.yaml"

rm -f ${file_path}

echo "$GITHUB_ISSUE_BODY" >> ${file_path}

yq eval '.' ${file_path} > /dev/null 2>&1 || { echo 'Erro ao carregar o arquivo YAML'; exit 1; }

# Carregar valores do arquivo YAML
title=$(yq eval '.title' ${file_path})
email=$(yq eval '.email' ${file_path})
description=$(yq eval '.description' ${file_path})
baseurl=$(yq eval '.baseurl' ${file_path})
url=$(yq eval '.url' ${file_path})
github_username=$(yq eval '.github_username' ${file_path})
instagram_username=$(yq eval '.instagram_username' ${file_path})
site_description_title=$(yq eval '.site_description_title' ${file_path})
site_description=$(yq eval '.site_description' ${file_path})
cor_principal=$(yq eval '.cor_principal' ${file_path})
cor_de_selecao=$(yq eval '.cor_de_selecao' ${file_path})
cor_mouse_sobre=$(yq eval '.cor_mouse_sobre' ${file_path})

# Atualizando arquivo _config.yml
config_file="_config.yml"
yq eval ".title = \"$title\"" -i ${config_file}
yq eval ".email = \"$email\"" -i ${config_file}
yq eval ".description = \"$description\"" -i ${config_file}
yq eval ".baseurl = \"$baseurl\"" -i ${config_file}
yq eval ".url = \"$url\"" -i ${config_file}
yq eval ".github_username = \"$github_username\"" -i ${config_file}
yq eval ".instagram_username = \"$instagram_username\"" -i ${config_file}

# Atualizando arquivo _about/sobre-a-pessoa.md
about_file="_about/sobre-a-pessoa.md"
sed -i '' "2s/.*/citation: $site_description_title/" ${about_file}
sed -i '' "4s/.*/$site_description/" ${about_file}

# Atualizando estilos
scss_file="css/main.scss"
sed -i '' "20s/.*/\$primary-color: #$cor_principal;/" ${scss_file}
sed -i '' "21s/.*/\$selected-color: #$cor_de_selecao;/" ${scss_file}
sed -i '' "22s/.*/\$hover-color: #$cor_mouse_sobre;/" ${scss_file}
