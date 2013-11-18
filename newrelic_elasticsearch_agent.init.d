#!/usr/bin/env ruby

require 'rubygems'
require 'daemons'
require 'bundler/setup'

options = {
  :dir_mode => :normal,
  :dir => '/var/run/newrelic/',
  :user => 'art',
  :group => 'art',
  :log_dir => '/var/log/newrelic/',
  :log_output => true
}

Daemons.run('/usr/bin/newrelic_elasticsearch_agent', options)
