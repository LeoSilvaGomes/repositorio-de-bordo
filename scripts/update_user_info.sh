file_path="user_info.yaml"

echo "$GITHUB_ISSUE_BODY" >> ${file_path}

cat ${file_path}

# Verificar se o arquivo YAML está corretamente formatado
python3 -c "import yaml; yaml.safe_load(open('${file_path}'))" || { echo 'Erro ao carregar o arquivo YAML'; exit 1; }


# Executar o script Python para processar o arquivo YAML
# python3 scripts/process_user_info.py