path_post="_qualification/"
file_date="$GITHUB_ISSUE_CREATED_AT"
file_name="${file_date:0:10}-qualification-$GITHUB_ISSUE_NUMBER.md"
file_path="${path_post}${file_name}"

rm -f ${file_path}