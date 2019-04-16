require 'rails_helper'

RSpec.describe EventPolicy, type: :policy do
  let(:user) { User.new }
  let(:user_not_owner) { User.new }
  let(:event) { user.events.build }

  subject { described_class }

  context "When user is not sign in" do
    permissions :edit?, :update?, :destroy? do
      it { is_expected.not_to permit(nil, event) }
    end

    permissions :show? do
      it { is_expected.to permit(nil, event) }
    end
  end

  context "When user is not owner of event" do
    permissions :edit?, :update?, :destroy? do
      it { is_expected.not_to permit(user_not_owner, event) }
    end

    permissions :show? do
      it { is_expected.to permit(user_not_owner, event) }
    end
  end

  context "When user is owner of event" do
    permissions :edit?, :update?, :destroy? do
      it { is_expected.to permit(user, event) }
    end

    permissions :show? do
      it { is_expected.to permit(user, event) }
    end
  end
end
