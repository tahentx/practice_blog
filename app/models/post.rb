class Post < ApplicationRecord
	before_create :create_uuid
	has_many  :comments, dependent: :destroy
	private
	def create_uuid
	    begin
	      self.uuid = SecureRandom.uuid
	    end while self.class.exists?(:uuid => uuid)
    end
end
