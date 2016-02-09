require "serverspec"

set :backend, :exec

describe command("which hg") do
  its(:exit_status) { should eq 0 }
end

describe command("hg help") do
  its(:stdout) { should match /largefiles/ }
end
