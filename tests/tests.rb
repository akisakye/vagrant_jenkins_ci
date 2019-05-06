describe package('wget') do
  it { should be_installed }
end
describe package('puppet-agent') do
  it { should be_installed }
end
describe package('jenkins') do
  it { should be_installed }
end
describe port(8080) do
  it { should be_listening }
end
