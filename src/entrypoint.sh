NEXT_VERSION=`cd ${GITHUB_WORKSPACE}; bump2version --dry-run --list ${INPUT_PART} | grep new_version | sed -r s,"^.*=",,`

echo ":set-output name=nextVersion::${NEXT_VERSION}"
