path_post="_about/"
file_date="$GITHUB_ISSUE_CREATED_AT"
file_name="${file_date:0:10}-about-$GITHUB_ISSUE_NUMBER.md"
file_path="${path_post}${file_name}"

echo "---" >> ${file_path}
echo "created: $GITHUB_ISSUE_CREATED_AT" >> ${file_path}
echo "author: $GITHUB_ISSUE_USER" >> ${file_path}
echo "" >> ${file_path}

echo "citation: $GITHUB_ISSUE_TITLE" >> ${file_path}
echo "" >> ${file_path}
echo "---" >> ${file_path}

echo "$GITHUB_ISSUE_BODY" >> ${file_path}
