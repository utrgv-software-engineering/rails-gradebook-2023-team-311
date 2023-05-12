class AddAccountIdToUsers < ActiveRecord::Migration[7.0]
        def change
          add_column :users, :role_id, :integer, default: 1
                #added default 1 to use rspec testing.
        end
      end
