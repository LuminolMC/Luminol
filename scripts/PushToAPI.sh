sha256() {
  sha256sum $1 | awk '{print $1}'
}
prop() {
  grep "${1}" gradle.properties | cut -d'=' -f2 | sed 's/\r//'
}

mcversion_group=$(prop GroupMCV)
mcversion=$(prop mcVersion)
pre=$(prop preVersion)
pro_id_mcv=$project_id-$mcversion

if [ $pre = "true" ]; then
  channel="experimental"
else
  channel="default"
fi

changes=$(git log -1 --pretty="[{\"commit\": \"%H\", \"message\": \"%s\", \"summary\": \"%s\"}]")
jar_sha256=`sha256 build/libs/$pro_id_mcv-paperclip.jar`
jar_name="$pro_id_mcv-paperclip.jar"
ctime=$(date -u +"%s")"000"

# v2
curl -L --request POST "https://api.luminolmc.com/v2/projects/$project_id/$mcversion/build/commit" -H "Content-Type: application/x-www-form-urlencoded" -H "Authorization: $secret_v2" --data-urlencode "channel=$channel" --data-urlencode "jar_name=$jar_name" --data-urlencode "sha256=$jar_sha256" --data-urlencode "release_tag=$tag" --data-urlencode "time=$ctime" --data-urlencode "changes=$changes"