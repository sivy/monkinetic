# post_update script for actions to be taken during a deploy

# generate the site
echo "building site..."
export PATH="$PATH:/var/lib/gems/1.8/bin/"
rake generate

echo "copying public/* to /var/www/stage-monkinetic-com/"
cp -R public/* /var/www/stage-monkinetic-com/