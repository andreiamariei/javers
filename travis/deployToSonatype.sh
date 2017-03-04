echo "uploadArchives..."
./gradlew uploadArchives -PnexusUsername=$sonatypeUser -PnexusPassword=$sonatypePassword -Psigning.keyId=$signingKeyId -Psigning.password=$signingPassword -Psigning.secretKeyRingFile=$TRAVIS_BUILD_DIR/travis/secring.gpg

echo "closeAndPromoteRepository..."
./gradlew closeAndPromoteRepository -PnexusUsername=$sonatypeUser -PnexusPassword=$sonatypePassword
