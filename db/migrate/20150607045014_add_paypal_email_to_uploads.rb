class AddPaypalEmailToUploads < ActiveRecord::Migration
  def change
    add_column :uploads, :paypal_email, :string
  end
end
