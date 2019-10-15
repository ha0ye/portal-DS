#!/bin/bash

echo CI=\"$CI\" > env_file
echo TRAVIS=\"$TRAVIS\" >> env_file
echo CONTINUOUS_INTEGRATION=\"$CONTINUOUS_INTEGRATION\" >> env_file
echo TRAVIS_PULL_REQUEST=\"$TRAVIS_PULL_REQUEST\" >> env_file
echo TRAVIS_BRANCH=\"$TRAVIS_BRANCH\" >> env_file
echo TRAVIS_BUILD_NUMBER=\"$TRAVIS_BUILD_NUMBER\" >> env_file
echo TRAVIS_COMMIT=\"$TRAVIS_COMMIT\" >> env_file
echo CODECOV_TOKEN=\"$CODECOV_TOKEN\" >> env_file
echo DOCKER_PAT=\"$DOCKER_PAT\" >> env_file
echo DOCKER_USER=\"$DOCKER_USER\" >> env_file
echo GITHUB_PAT=\"$GITHUB_PAT\" >> env_file