prop() {
  grep "${1}" gradle.properties | cut -d'=' -f2 | sed 's/\r//'
}

commitid=$(git log --pretty='%h' -1)
mcversion=$(prop mcVersion)
preVersion=$(prop preVersion)
release_tag="$mcversion-$commitid"
jarName="build/libs/luminol-1.20.4-paperclip.jar"
make_latest=$([ $preVersion = "true" ] && echo "false" || echo "true")

echo "commitid=$commitid" >> $GITHUB_ENV
echo "mcversion=$mcversion" >> $GITHUB_ENV
echo "$mcversion"
echo "tag=$release_tag" >> $GITHUB_ENV
echo "jar=$jarName" >> $GITHUB_ENV
echo "pre=$preVersion" >> $GITHUB_ENV
echo "make_latest=$make_latest" >> $GITHUB_ENV