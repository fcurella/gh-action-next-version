INFO=`bump2version --dry-run --list ${INPUT_PART} | rs 0 1`

CURRENT_VERSION=`echo ${INFO} | grep current_version | sed -r s,"^.*=",,`
NEXT_VERSION=`echo ${INFO} | grep new_version | sed -r s,"^.*=",,`

echo "info:"
echo $INFO
echo "current: ${CURRENT_VERSION}"
echo "next: ${NEXT_VERSION}"

echo "::set-output name=currentVersion::v${CURRENT_VERSION}"
echo "::set-output name=nextVersion::v${NEXT_VERSION}"
