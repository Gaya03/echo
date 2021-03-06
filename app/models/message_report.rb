class MessageReport
  include Mongoid::Document

  field :message_report_id, :default => proc { "fail-#{Time.now.to_f.to_s}" }
  belongs_to :message, primary_key: :message_id, foreign_key: :message_report_id
end
