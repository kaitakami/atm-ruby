# frozen_string_literal: true

def atm(balance, available_bills)
  available_bills.each_with_object({}) do |bill, result|
    (bills_amount, balance) = balance.divmod(bill)
    result[bill] = bills_amount
    result
  end
end
