file_path="user_info.yaml"

rm -f ${file_path}

echo "$GITHUB_ISSUE_BODY" >> ${file_path}


# Executar o script Python para processar o arquivo YAML
python3 scripts/process_user_info.py