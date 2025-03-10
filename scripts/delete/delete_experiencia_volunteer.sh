path_post="project-experience/"
file_date="$GITHUB_ISSUE_CREATED_AT"
file_name="${file_date:0:10}-experience-$GITHUB_ISSUE_NUMBER.md"
file_path="${path_post}${file_name}"

rm -f ${file_path}