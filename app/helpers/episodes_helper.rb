module EpisodesHelper
  def clip_subtitle(str)
    if str.length < 255
      str
    else
      str[0..251]+'...'
    end
  end
end
