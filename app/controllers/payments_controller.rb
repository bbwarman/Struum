class PaymentsController < ApplicationController
	def new
		@teacher = Teacher.find(params[:id])

	end

	def create
		@teacher = Teacher.find(params[:id])

		Stripe.api_key = ENV['SECRET_KEY']

		Stripe::Recipient.create(
        name: @teacher.name,
        type: @teacher.type,
      )
	end

	def new_payment
		@teacher = Teacher.find(params[:id])
	end

end
