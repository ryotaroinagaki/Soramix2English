class Form::CreateChoices < Form::Base
  FORM_COUNT = 4
  attr_accessor :choice, :question_id, :is_answer, :choices

  def initialize(attributes = {})
    super attributes
    self.choices = FORM_COUNT.times.map { Choice.new } unless choices.present?
  end

  def choices_attributes=(attributes)
    self.choices = attributes.map { |_, v| Choice.new(v) }
  end

  def save
    Choice.transaction do
      choices.each(&:save!)
    end
    true
  rescue StandardError => e
    false
  end
end
