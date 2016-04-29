class DonationPolicy < ApplicationPolicy
  def create?
    true
  end

  def permitted_attributes
    if create? || update?
      [:widget_id, :token, :payment_method, :amount, :email]
    else
      []
    end
  end
end