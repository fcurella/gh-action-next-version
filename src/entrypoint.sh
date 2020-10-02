set -e

bump2version --dry-run --list ${INPUT_PART}

eval `bump2version --dry-run --list ${INPUT_PART} | grep current_version`
eval `bump2version --dry-run --list ${INPUT_PART} | grep new_version`

echo "current: ${current_version}"
echo "next: ${new_version}"

echo "::set-output name=currentVersion::v${current_version}"
echo "::set-output name=nextVersion::v${new_version}"
