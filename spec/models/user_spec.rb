require 'spec_helper'

describe User do

	before { @user = User.new(email: "a@a.com") }

	subject { @user }

    it { should respond_to(:email) }
    it { should respond_to(:password_digest) }
    it { should respond_to(:password) }

end
