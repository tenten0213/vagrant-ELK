require 'spec_helper'

describe package('nginx') do
  it { should be_installed }
end

describe service('nginx') do
  it { should be_enabled }
  it { should be_running }
end

describe package('elasticsearch') do
  it { should be_installed }
end

describe service('elasticsearch') do
  it { should be_enabled }
  it { should be_running }
end

describe package('logstash') do
  it { should be_installed }
end

describe service('logstash') do
  it { should be_enabled }
  it { should be_running }
end
