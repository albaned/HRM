module PushimetHelper
  #_form
  def pc(lan = "en")
    if(lan == "en")
      "PC"
    else
      if(lan == "al")
        "Kompjuter"
      end
    end
  end
  def paneli(lan = "en")
    if(lan == "en")
      "Dashboard"
    else
      if(lan == "al")
        "Paneli"
      end
    end
  end
  def appi(lan = "en")
    if(lan == "en")
      "Applications"
    else
      if(lan == "al")
        "Aplikimet"
      end
    end
  end
  def puntori(lan = "en")
    if(lan == "en")
      "Workers"
    else
      if(lan == "al")
        "Punetoret"
      end
    end
  end
  def pushimet(lan = "en")
    if(lan == "en")
      "Holidays"
    else
      if(lan == "al")
        "Pushimet"
      end
    end
  end
  def gjuha(lan = "en")
    if(lan == "en")
      "Language"
    else
      if(lan == "al")
        "Gjuha"
      end
    end
  end
  def status(lan = "en")
    if(lan == "en")
      "Statuses"
    else
      if(lan == "al")
        "Statuset"
      end
    end
  end
  def dil(lan = "en")
    if(lan == "en")
      "Logout"
    else
      if(lan == "al")
        "Shkyçu"
      end
    end
  end
  def refuzuar(lan = "en")
    if(lan == "en")
      "Rejected"
    else
      if(lan == "al")
        "Refuzuar"
      end
    end
  end
  def intervs(lan = "en")
    if(lan == "en")
      "Intervews"
    else
      if(lan == "al")
        "Intervista"
      end
    end
  end
end
