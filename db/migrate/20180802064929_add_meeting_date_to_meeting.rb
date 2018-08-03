class AddMeetingDateToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :meeting_date, :datetime
  end
end
