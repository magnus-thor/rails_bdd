require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :commenter }
    it { is_expected.to have_db_column :body }
    it { is_expected.to have_db_column :article_id }
    it { is_expected.to have_db_column :email }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :commenter }
    it { is_expected.to validate_presence_of :body }
    it { is_expected.to validate_uniqueness_of :email }
  end
end
