shopt -s dotglob

dir=${1}

mkdir -p ../.github/

pr-template=$(find ./$dir -type f -iname "pull_request_template*")
codeowners=$(find ./$dir -type f -iname "CODEOWNERS")

if test ${pr-template}; then
    mv -f ${pr-template} ../.github/pull_request_template.md
fi

if test ${codeowners}; then
    mv -f ${codeowners} ../.github/CODEOWNERS
fi

mv -f ./$dir/*  ../