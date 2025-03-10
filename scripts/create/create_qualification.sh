path_post="_qualification/"
file_date="$GITHUB_ISSUE_CREATED_AT"
file_name="${file_date:0:10}-qualification-$GITHUB_ISSUE_NUMBER.md"
file_path="${path_post}${file_name}"

echo "---" >> ${file_path}
echo "created: $GITHUB_ISSUE_CREATED_AT" >> ${file_path}
echo "author: $GITHUB_ISSUE_USER" >> ${file_path}
echo "" >> ${file_path}

echo "nome: $GITHUB_ISSUE_TITLE" >> ${file_path}
echo "" >> ${file_path}

echo "$GITHUB_ISSUE_BODY" | sed -n '/---/q;p' >> ${file_path}

permalink=$(echo "$GITHUB_ISSUE_BODY" | egrep -ws '(---.*)' -A10 | grep -oP '(?<=\().*(?=\))')
echo "permalink: ${permalink}" >> ${file_path}
echo "---" >> ${file_path}
