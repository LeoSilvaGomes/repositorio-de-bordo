file_path="user_info.yml"

echo "$GITHUB_ISSUE_BODY" >> ${file_path}

python3 scripts/process_user_info.py