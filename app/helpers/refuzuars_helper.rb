module RefuzuarsHelper
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
