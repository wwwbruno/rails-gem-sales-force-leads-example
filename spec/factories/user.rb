FactoryGirl.define do
  factory :basic_user, :class => 'User' do
    name "Bruno"
    email "bruno@disvolvi.com"
  end

  factory :full_user, :class => 'User' do
    name "Bruno"
    last_name "Almeida"
    email "bruno@disvolvi.com"
    company "Disvolvi"
    job_title "Full-stack developer"
    phone "48 8888-8888"
    website "http://disvolvi.com/"
  end

end
