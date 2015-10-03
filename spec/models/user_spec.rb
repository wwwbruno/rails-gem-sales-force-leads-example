require 'rails_helper'

RSpec.describe User, type: :model do

  let(:basic_user) {FactoryGirl.create :basic_user}
  let(:full_user) {FactoryGirl.create :full_user}

  it "check basic user to be valid" do
    # Arrange
    # Act
    # Assert
    expect(basic_user.sf_valid?).to be true
  end

  it "check basic user to be invalid" do
    # Arrange
    basic_user.email = nil
    # Act
    # Assert
    expect(basic_user.sf_valid?).to be false
  end

  it "check basic user to not br valid full attributes" do
    # Arrange
    # Act
    # Assert
    expect(basic_user.sf_has_all_attr_valid?).to be false
  end

  it "check full user to be valid full attributes" do
    # Arrange
    # Act
    # Assert
    expect(full_user.sf_has_all_attr_valid?).to be true
  end
end
