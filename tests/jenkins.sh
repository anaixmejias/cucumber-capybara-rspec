#!/bin/bash
set -o errexit

#Move to portal test dir
cd EntryFormPROD/tests
#Make sure we have up to date gems installed as specified in Gemfile.lock
bundle install
#Run the tests

#bundle exec rake run_server=true test_minified=true format=junit --trace