# frozen_string_literal: true

require "rails_helper"

RSpec.describe Post, type: :model do

  it "is valid" do
    expect(build(:post)).to be_valid
  end

  it "is invalid without a title" do
    expect(build(:post, title: nil)).to be_invalid
  end

  it "is invalid with too short content" do
    expect(build(:post, content: "too short")).to be_invalid
  end

  it "is invalid with a long summary" do
    expect(build(:post, summary: "too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long too long")).to be_invalid
  end

  it "is invalid with a category outside the choices" do
    expect(build(:post, category: "Psychology")).to be_invalid
  end

  it "is invalid if not clickbait" do
    expect(build(:post, title: "All")).to be_invalid
  end

  it "has a valid factory" do
    expect(build(:post)).to be_valid
  end
end
