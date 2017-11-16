require 'spec_helper'

describe Aws::Broker::Config do

  subject { described_class.new }

  it { should have_attr_accessor(:enabled) }
  it { should have_attr_accessor(:queue_prefix) }
  it { should have_attr_accessor(:aws_access_key) }
  it { should have_attr_accessor(:aws_secret_key) }
  it { should have_attr_accessor(:aws_region) }
  it { expect(subject.method(:enabled?)).to eq(subject.method(:enabled)) }

end
