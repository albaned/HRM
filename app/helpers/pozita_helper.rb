module PozitaHelper
  def seyHello(lan = "en")
    if(lan == "en")
      "Say Hello to Universal Job Portal AdaptivIT Theme"
    else
      if(lan == "al")
        "Thuaj Përshëndetje për Universal Portal Adaptive Theme"
      end
    end
  end
  def job(lan = "en")
    if(lan == "en")
      "Job Application"
    else
      if(lan == "al")
        "Aplikim per pune"
      end
    end
  end
  def h2(lan = "en")
    if(lan == "en")
      "Well trusted and verified companies all around the world are using our job platform to find best employees. Start your change by clicking at Add Resume."
    else
      if(lan == "al")
        "Kompanitë besuar mirë dhe të verifikuara në mbarë botën janë duke përdorur platformën tonë të punës për të gjetur punonjësit më të mirë. Filloni ndryshimin tuaj duke klikuar tek Shto Resume."
      end
    end
  end
  def nex(lan = "en")
    if(lan == "en")
      "Next"
    else
      if(lan == "al")
        "Vazhdo"
      end
    end
  end
  def pun(lan = "en")
    if(lan == "en")
      "Work Positions"
    else
      if(lan == "al")
        "Pozitat per pune"
      end
    end
  end
end
