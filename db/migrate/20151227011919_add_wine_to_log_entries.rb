class AddWineToLogEntries < ActiveRecord::Migration
  def change
    add_reference :log_entries, :wine, index: true
  end
end
