module DashboardHelper
  def shk(lan = "en")
    if(lan == "en")
      "Logout"
    else
      if(lan == "al")
        "Shkyçu"
      end
    end
  end
  def pan(lan)
    if(lan == "en")
      "Dashboard"
    else
      if(lan == "al")
        "Paneli"
      end
    end
  end
  def pc(lan = "en")
    if(lan == "en")
      "PC"
    else
      if(lan == "al")
        "Kompjuter"
      end
    end
  end
  def apli(lan = "en")
    if(lan == "en")
      "Applications"
    else
      if(lan == "al")
        "Aplikimet"
      end
    end
  end
  def pun(lan = "en")
    if(lan == "en")
      "Workers"
    else
      if(lan == "al")
        "Punetoret"
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
  def qytet(lan = "en")
    if(lan == "en")
      "City"
    else
      if(lan == "al")
        "Qytetet"
      end
    end
  end
  def push(lan = "en")
    if(lan == "en")
      "Holidays"
    else
      if(lan == "al")
        "Pushimet"
      end
    end
  end
  def pozit(lan = "en")
    if(lan == "en")
      "Positions"
    else
      if(lan == "al")
        "Pozitat"
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
  def qytet(lan = "en")
    if(lan == "en")
      "City"
    else
      if(lan == "al")
        "Qytetet"
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
