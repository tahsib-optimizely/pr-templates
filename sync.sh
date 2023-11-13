shopt -s dotglob

dir=${1}

mkdir -p ../.github/

prtemplate=$(find ./$dir -type f -iname "pull_request_template*")
codeowners=$(find ./$dir -type f -iname "CODEOWNERS")

if test ${prtemplate}; then
    mv -f ${prtemplate} ../.github/pull_request_template.md
fi

if test ${codeowners}; then
    mv -f ${codeowners} ../.github/CODEOWNERS
fi

mv -f ./$dir/*  ../