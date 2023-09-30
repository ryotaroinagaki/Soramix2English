class Admin::ChoicesController < Admin::BaseController
  def new
    @form = Form::CreateChoices.new
    @question = Question.last
  end

  def create
    @form = Form::CreateChoices.new(choice_params)
    binding.irb
    if @form.save
      redirect_to admin_questions_path, success: t('.success')
    else
      flash.now[:error] = t('.fail')
      render :new
    end
  end

  private

  def choice_params
    params.require(:form_create_choices).permit(choices_attributes: [:question_id, :choice, :is_answer])
  end
end