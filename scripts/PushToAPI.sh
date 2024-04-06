sha256() {
  sha256sum $1 | awk '{print $1}'
}

prop() {
  grep "${1}" gradle.properties | cut -d'=' -f2 | sed 's/\r//'
}
echo "$tag"
project_id="luminol"
mcversion_group=$(prop GroupMCV)
mcversion=$(prop mcVersion)
echo "$mcversion_group - $mcversion"
pre=$(prop preVersion)
if [ $pre = "true" ]; then
  channel="experimental"
else
  channel="default"
fi

number=$(git log --oneline ver/1.20.4 ^$(git describe --tags --abbrev=0) | wc -l)
changes=$(git log --pretty='%H<<<%s>>>' -"$number" | sed ':a;N;$!ba;s/\n//g')
jar_sha256=`sha256 build/libs/luminol-1.20.4-paperclip.jar`
echo "$jar_sha256"
jar_name="luminol-1.20.4-paperclip.jar"
ctime=$(date -u +"%s")"000"
echo "$ctime"
# v2
curl --location --request POST "https://api.luminolmc.com/v2/projects/$project_id/$mcversion/build/commit" --header "Content-Type: application/json" --header "Authentication: $secret_v2" --data-raw "{\"version_group\":\"$mcversion_group\",\"channel\":\"$channel\",\"changes\":\"$changes\",\"jar_name\":\"$jar_name\",\"sha256\":\"$jar_sha256\",\"release_tag\":\"$tag\",\"time\":\"$ctime\"}"