module StatusesHelper
  #_form
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
  #editi
  def editi(lan = "en")
    if(lan == "en")
      "Editing Status"
    else
      if(lan == "al")
        "Ndrysho Statusit"
      end
    end
  end
  def ndrysho(lan = "en")
    if(lan == "en")
      "Edit"
    else
      if(lan == "al")
        "Ndrysho"
      end
    end
    end
    #index
    def add(lan = "en")
      if(lan == "en")
        "Add new"
      else
        if(lan == "al")
          "Regjistro Statusin"
        end
      end
    end
    def des(lan = "en")
      if(lan == "en")
        "Description"
      else
        if(lan == "al")
          "Pershkrimi"
        end
      end
    end
    def aksionet(lan = "en")
      if(lan == "en")
        "Actions"
      else
        if(lan == "al")
          "Aksionet"
        end
      end
    end
    def ndrysho(lan = "en")
      if(lan == "en")
        "EDIT"
      else
        if(lan == "al")
          "NDRYSHO"
        end
      end
    end
    def fshije(lan = "en")
      if(lan == "en")
        "DELETE"
      else
        if(lan == "al")
          "FSHIJ"
        end
      end
    end
    def kth(lan = "en")
      if(lan == "en")
        "Back"
      else
        if(lan == "al")
          "Kthehu"
        end
      end
    end
    #new
    def regj_statusi(lan = "en")
      if(lan == "en")
        "Recording Status"
      else
        if(lan == "al")
          "Regjistrimi Statusit"
        end
      end
    end
    def ruj(lan = "en")
      if(lan == "en")
        "Save"
      else
        if(lan == "al")
          "Ruaj"
        end
      end
    end
    #show
    def list_statusi(lan = "en")
      if(lan == "en")
        "Listing of positions"
      else
        if(lan == "al")
          "Listimi i pozitave"
        end
      end
    end

    def savei(lan = "en")
      if(lan == "en")
        "Save"
      else
        if(lan == "al")
          "Ruaj"
        end
      end
    end

    def closi(lan = "en")
      if(lan == "en")
        "Close"
      else
        if(lan == "al")
          "Mbyll"
        end
      end
    end

    def newi2(lan = "en")
      if(lan == "en")
        "New Status"
      else
        if(lan == "al")
          "Status i ri"
        end
      end
    end
end
