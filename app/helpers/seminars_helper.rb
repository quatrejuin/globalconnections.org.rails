module SeminarsHelper
  def post_path(seminar)
    seminar_path(seminar)
  end

  # poats_path will be used in views/seminars/new.html.erb by form_for
  def posts_path
    seminars_path
  end

  def post_url(seminar)
    seminar_url(seminar)
  end

  def posts_url
    seminars_url
  end
end
