class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  nilify_blanks before: :validation

  private

  after_initialize :assign_uuid, if: :new_record?

  def assign_uuid
    unless self.class.columns_hash["id"].type == :uuid
      raise "invalid id type, please change to uuid"
    end

    self.id ||= Agilibox::SortableUUIDGenerator.call
  end
end
