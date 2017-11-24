# # encoding: utf-8

# Inspec test for recipe learn_chef_apache2::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

unless os.windows?
  describe user('root') do
    it { should exist }
    its('uid') { should eq 0 }
    its('gid') { should eq 0 }
  end
  describe user('web_admin') do
    it { should exist }
    its('groups') { should include('web_admin') }
    its('shell') { should eq '/bin/bash' }
    its('uid') { should eq 666 }
    its('gid') { should eq 666 }
  end
  describe user('wwwadmin') do
    it { should exist }
    its('groups') { should include('wwwadmin') }
    its('shell') { should eq '/bin/bash' }
    its('uid') { should eq 667 }
    its('gid') { should eq 667 }
  end
end
