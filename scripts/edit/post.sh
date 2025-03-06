path_post="_posts/"
file_date="$GITHUB_ISSUE_CREATED_AT"
file_name="${file_date:0:10}-post-$GITHUB_ISSUE_NUMBER.md"
file_path="${path_post}${file_name}"

rm -f ${file_path}

echo "---" >> ${file_path}
echo "layout: post" >> ${file_path}
echo "title: $GITHUB_ISSUE_TITLE" >> ${file_path}
echo "date: $GITHUB_ISSUE_CREATED_AT" >> ${file_path}
echo "author: $GITHUB_ISSUE_USER" >> ${file_path}
# echo "url: $GITHUB_ISSUE_URL" >> ${file_path} 
echo "---" >> ${file_path}
echo "$GITHUB_ISSUE_BODY" >> ${file_path}