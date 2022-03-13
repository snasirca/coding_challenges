require "rspec/autorun"

class Invoicer
  def initialize(send_schedule)
    @send_schedule = send_schedule
  end

  def send_emails(customer_invoices, customer_payments = {})
    result = customer_invoices
      .flat_map { |invoice| build_schedule(invoice, customer_payments) }
      .sort_by { |schedule| schedule.first }
      .map { |date_subject| "#{date_subject.first}: #{date_subject.last}" }
      .join("\n")

    puts result
  end

  def build_schedule(customer_invoice, customer_payments = {})
    schedule_dates = @send_schedule.keys
    schedule_dates.map do |schedule_date|

      already_paid = payments_prior(
        customer_invoice[:name],
        schedule_date,
        customer_payments)

      amount_remaining = customer_invoice[:amount] - already_paid
      if amount_remaining > 0
        subject =
          "[#{@send_schedule[schedule_date]}] Invoice for #{customer_invoice[:name]} for #{amount_remaining} dollars"
        [
          schedule_date + customer_invoice[:invoice_time],
          subject
        ]
      else
        []
      end
    end
                  .filter(&:any?)
  end

  private

  def payments_prior(customer_name, schedule_date, customer_payments)
    customer_payments
      .filter { |payment| payment[:name] == customer_name && payment[:payment_time] <= schedule_date }
      .map { |payment| payment[:amount] }
      .sum(0)
  end
end

RSpec.describe "Solution" do
  it "1" do
    expect do
      send_schedule = {
        -10 => "Upcoming",
        0 => "New",
        20 => "Reminder",
        30 => "Due"
      }
      invoicer = Invoicer.new(send_schedule)

      customer_invoices = [
        { "invoice_time": 0, "name": "Alice", "amount": 200 },
        { "invoice_time": 1, "name": "Bob", "amount": 100 },
      ]
      invoicer.send_emails(customer_invoices)
    end.to output(<<~OUTPUT).to_stdout
      -10: [Upcoming] Invoice for Alice for 200 dollars
      -9: [Upcoming] Invoice for Bob for 100 dollars
      0: [New] Invoice for Alice for 200 dollars
      1: [New] Invoice for Bob for 100 dollars
      20: [Reminder] Invoice for Alice for 200 dollars
      21: [Reminder] Invoice for Bob for 100 dollars
      30: [Due] Invoice for Alice for 200 dollars
      31: [Due] Invoice for Bob for 100 dollars
    OUTPUT
  end

  it "2" do
    send_schedule = {
      -10 => "Upcoming",
      0 => "New",
      20 => "Reminder",
      30 => "Due"
    }
    invoicer = Invoicer.new(send_schedule)
    customer_invoice =
      { "invoice_time": 0, "name": "Alice", "amount": 200 }

    schedule = invoicer.build_schedule(customer_invoice)

    expect(schedule).to eq([
      [-10, "[Upcoming] Invoice for Alice for 200 dollars"],
      [0, "[New] Invoice for Alice for 200 dollars"],
      [20, "[Reminder] Invoice for Alice for 200 dollars"],
      [30, "[Due] Invoice for Alice for 200 dollars"]
    ])
  end

  it "3" do
    send_schedule = {
      -10 => "Upcoming",
      0 => "New",
      20 => "Reminder",
      30 => "Due"
    }
    invoicer = Invoicer.new(send_schedule)
    customer_invoice =
      { "invoice_time": 0, "name": "Alice", "amount": 200 }
    customer_payments =
      { "payment_time": -9, "name": "Alice", "amount": 100 },
        { "payment_time": 1, "name": "Alice", "amount": 50 }

    schedule = invoicer.build_schedule(customer_invoice, customer_payments)

    expect(schedule).to eq([
      [-10, "[Upcoming] Invoice for Alice for 200 dollars"],
      [0, "[New] Invoice for Alice for 100 dollars"],
      [20, "[Reminder] Invoice for Alice for 50 dollars"],
      [30, "[Due] Invoice for Alice for 50 dollars"]
    ])
  end

  it "4" do
    expect do
      send_schedule = {
        -10 => "Upcoming",
        0 => "New",
        20 => "Reminder",
        30 => "Due"
      }
      invoicer = Invoicer.new(send_schedule)
      customer_invoices = [
        { "invoice_time": 0, "name": "Alice", "amount": 200 },
        { "invoice_time": 1, "name": "Bob", "amount": 100 },
      ]
      customer_payments = [
        { "payment_time": -9, "name": "Alice", "amount": 100 },
        { "payment_time": 1, "name": "Alice", "amount": 50 },
        { "payment_time": 0, "name": "Bob", "amount": 100 },
      ]

      invoicer.send_emails(customer_invoices, customer_payments)
    end.to output(<<~OUTPUT).to_stdout
      -10: [Upcoming] Invoice for Alice for 200 dollars
      -9: [Upcoming] Invoice for Bob for 100 dollars
      0: [New] Invoice for Alice for 100 dollars
      20: [Reminder] Invoice for Alice for 50 dollars
      30: [Due] Invoice for Alice for 50 dollars
    OUTPUT
  end
end
