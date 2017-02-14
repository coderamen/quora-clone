helpers do
  def current_user(session_id)
    User.find_by_id(session_id)
  end

  def question_url(questions)
    "questions/#{question.id}"
  end

  def question_edit_url()
    "questions/#{question.id}/edit"
  end
end
