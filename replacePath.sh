echo "<<replace to deploy for github>>"
directory="SETO-LAB"
echo "s/javascripts/$directory\/javascripts/g"
grep -l 'javascripts' ./docs/*.html | xargs sed -i '' -e 's/javascripts/$directory\/javascripts/g'
grep -l 'stylesheets' ./docs/*.html | xargs sed -i '' -e 's/stylesheets/$directory\/stylesheets/g'
grep -l 'images' ./docs/*.html | xargs sed -i '' -e 's/images/$directory\/images/g'
grep -l 'images' ./docs/stylesheets/*.css | xargs sed -i '' -e 's/images/$directory\/images/g'
grep -l 'index.html' ./docs/*.html | xargs sed -i '' -e 's/index\.html/$directory\/index.html/g'
grep -l 'privacypolicy.html' ./docs/*.html | xargs sed -i '' -e 's/privacypolicy.html/$directory\/privacypolicy.html/g'