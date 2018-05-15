#/bin/bash

source $(rvm 2.3.4 do rvm env --path)
rvm use 2.3.4

bundle install

jekyll serve --incremental --watch

bash
