echo "<<replace to deploy for github>>"
grep -l 'javascripts' ./docs/*.html | xargs sed -i '' -e 's/javascripts/ARPR-Page\/javascripts/g'
grep -l 'stylesheets' ./docs/*.html | xargs sed -i '' -e 's/stylesheets/ARPR-Page\/stylesheets/g'
grep -l 'images' ./docs/*.html | xargs sed -i '' -e 's/images/ARPR-Page\/images/g'
grep -l 'images' ./docs/stylesheets/*.css | xargs sed -i '' -e 's/images/ARPR-Page\/images/g'
grep -l 'index.html' ./docs/*.html | xargs sed -i '' -e 's/index\.html/ARPR-Page\/index.html/g'
grep -l 'privacypolicy.html' ./docs/*.html | xargs sed -i '' -e 's/privacypolicy.html/ARPR-Page\/privacypolicy.html/g'