class CreateStatuses < ActiveRecord::Migration
  def self.up
    create_table :statuses do |t|
      t.string :label

      t.timestamps
    end

    statuses = ['Submitted','Flier Created','Flier Approved', 'Webstore Created', 'Webstore Opened', 'Webstore Closed', 'Orders Totaled', 'Orders Submitted', 'Waiting for Items', 'Partially Shipped', 'Waiting for Backorders', 'Shipping Completed']
    for status in statuses
        Status.create(:label=>status)
    end

  end

  def self.down
    drop_table :statuses
  end
end
