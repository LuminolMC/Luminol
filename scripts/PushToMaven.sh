prop() {
  grep "^[[:space:]]*${1}" gradle.properties | cut -d'=' -f2 | sed 's/^[[:space:]]*//; s/\r//'
}

MAVEN_REPO_USER=${{ secrets.MAVEN_REPO_USER }}
MAVEN_REPO_PASSWORD=${{ secrets.MAVEN_REPO_PASSWORD }}

sh publish -PpublishDevBundle=true
