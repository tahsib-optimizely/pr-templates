#git submodule add https://github.com/tahsib-optimizely/pr-templates.git pr-templates
mkdir -p .github/
mv -f ./$1/pull_request_template.md .github/pull_request_template.md
mv -f "./$1"/* ../