eval `bump2version --dry-run --list ${INPUT_PART}`

echo "current: ${current_version}"
echo "next: ${new_version}"

echo "::set-output name=currentVersion::v${current_version}"
echo "::set-output name=nextVersion::v${new_version}"
