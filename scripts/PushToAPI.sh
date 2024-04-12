sha256() {
  sha256sum $1 | awk '{print $1}'
}

prop() {
  grep "${1}" gradle.properties | cut -d'=' -f2 | sed 's/\r//'
}
project_id="luminol"
mcversion_group=$(prop GroupMCV)
mcversion=$(prop mcVersion)
pre=$(prop preVersion)
if [ $pre = "true" ]; then
  channel="experimental"
else
  channel="default"
fi
changes=$(git log -1 --pretty='[{"commit": "%H", "message": "%s", "summary": "%b"}]')
jar_sha256=`sha256 build/libs/luminol-1.20.4-paperclip.jar`
jar_name="luminol-1.20.4-paperclip.jar"
ctime=$(date -u +"%s")"000"

# v2
echo "Authentication: $secret_v2"
echo "[DEBUG] curl --location -g --request POST "https://api.luminolmc.com/v2/projects/luminol/1.20.4/build/commit?jar_name=luminol-1.20.4-paperclip.jar&release_tag=$tag&changes="$changes"&sha256=$jar_sha256&time=$ctime&channel=$channel&version_group=$mcversion_group" -H "Authorization: $secret_v2""
# shellcheck disable=SC2031
curl --location -g --request POST -H "Authorization: $secret_v2" "https://api.luminolmc.com/v2/projects/luminol/1.20.4/build/commit?jar_name=$jar_name&release_tag=$tag&changes=$changes&sha256=$jar_sha256&time=$ctime&channel=$channel&version_group=$mcversion_group"
