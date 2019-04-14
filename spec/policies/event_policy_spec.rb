require 'rails_helper'

RSpec.describe EventPolicy, type: :policy do
  let(:user) { User.new }

  subject { described_class }

  context "When user is not logged" do
    permissions :edit?, :update?, :destroy? do
      it { is_expected.not_to permit(user, Event) }
    end

    permissions :show? do
      it { is_expected. to permit(user, Event) }
    end
  end

  context "When user is logged" do
    let(:event) { user.events.build }

    permissions :edit?, :update?, :destroy? do
      it { is_expected.to permit(user, event) }
    end

    permissions :show? do
      it { is_expected.to permit(user, event) }
    end
  end
end
