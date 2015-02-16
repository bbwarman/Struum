	class LessonsController < ApplicationController
    before_action :authenticate_user!, except: [:index]

  def index
    @lesson = Lesson.all
  end

  def new
    @lesson = Lesson.new
    @teacher = Teacher.find_by(params[:id])
  end

  def create
    @lesson = Lesson.new
    @teacher = Teacher.find_by(params[:id])
    @amount = @teacher.lesson_price.to_i * 100

    customer = Stripe::Customer.create(
    :email => current_user.email,
    :card  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'Struum Guitar Lessons',
    :currency    => 'usd'
  )
      
      @lesson.save
    redirect_to lesson_path(@lesson)

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to lessons_path

    
  end



def show
  config_opentok
  session = @opentok.create_session 
  session_id = session.session_id
  @lesson = Lesson.find(params[:id])
  @lesson.sessionId = session_id
  @tok_token = @opentok.generate_token session_id
end
 
    


  private
  def config_opentok
    if @opentok.nil?
      @opentok = OpenTok::OpenTok.new "45137662", "536e2f64d4ea351007e2c2e9fd0fe578fc5c34bb" 
    end
  end
end



