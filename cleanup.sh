echo "**** Cleaning up submodules ****"
git submodule deinit -f -- pr-templates    
git rm --cached pr-templates    
rm -rf .git/modules/pr-templates
rm -f .gitmodules
rm -rf pr-templates
echo "**** Cleaning Complete! ****"