require "rails_helper"

RSpec.describe AnswerVariant, type: :model do
  it { is_expected.to validate_presence_of :content }
  it { is_expected.to validate_presence_of :truthy }
  it { is_expected.to validate_presence_of :question }
end
