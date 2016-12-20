module HomeHelper
  def apply(lan = "en")
    if(lan == "en")
      "Apply"
    else
      if(lan == "al")
        "Apliko"
      end
    end
  end
  def wjaf(lan = "en")
    if(lan == "en")
      "Welcome to Job Application Form "
    else
      if(lan == "al")
        "Mirë se vini në formularin e aplikimit për punë"
      end
    end
  end
  def hta(lan = "en")
    if(lan == "en")
      "How to apply?"
    else
      if(lan == "al")
        "Si të aplikoni?"
      end
    end
  end
  def fotf(lan = "en")
    if(lan == "en")
      "Fill out the fields"
    else
      if(lan == "al")
        "Plotësoni fushat"
      end
    end
  end
  def ucv(lan = "en")
    if(lan == "en")
      "Upload CV"
    else
      if(lan == "al")
        "Shkarko CV"
      end
    end
  end
  def uip(lan = "en")
    if(lan == "en")
      "Upload Image Profile"
    else
      if(lan == "al")
        "Ngarkoni imazhin Profile"
      end
    end
  end
  def wml(lan = "en")
    if(lan == "en")
      "Write Motivation Letter"
    else
      if(lan == "al")
        "Shkruaj Letër Motivuese "
      end
    end
  end
end
