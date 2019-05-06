#!/bin/bash
INSPEC="$(which inspec)"

$INSPEC exec /tmp/tests.rb --chef-license=accept
