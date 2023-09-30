class Form::CreateChoices < Form::Base
  FORM_COUNT = 4 
  attr_accessor :choice, :question_id, :is_answer
  attr_accessor :choices

  def initialize(attributes = {})

    super attributes
    self.choices = FORM_COUNT.times.map { Choice.new() } unless self.choices.present?
  end
  
  def choices_attributes=(attributes)
    self.choices = attributes.map { |_, v| Choice.new(v) }
  end

  def save
    Choice.transaction do
      self.choices.each(&:save!)
    end
    return true
  rescue => e
    return false
  end
end