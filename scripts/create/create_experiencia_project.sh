path_post="_volunteer-experience/"
file_date="$GITHUB_ISSUE_CREATED_AT"
file_name="${file_date:0:10}-experience-$GITHUB_ISSUE_NUMBER.md"
file_path="${path_post}${file_name}"

echo "---" >> ${file_path}
echo "created: $GITHUB_ISSUE_CREATED_AT" >> ${file_path}
echo "" >> ${file_path}

echo "nome_empresa: $GITHUB_ISSUE_TITLE" >> ${file_path}
echo "" >> ${file_path}

echo "$GITHUB_ISSUE_BODY"  >> ${file_path}
echo "---" >> ${file_path}