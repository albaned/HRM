module PozisHelper
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
      "Log Out"
    else
      if(lan == "al")
        "Shkyçu"
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

    #edit
    def edit_pozita(lan = "en")
      if(lan == "en")
        "Editing Position"
      else
        if(lan == "al")
          " Editimi Pozites"
        end
      end
      end
      def edit_b(lan = "en")
        if(lan == "en")
          "Edit"
        else
          if(lan == "al")
            "Ndrysho"
          end
        end
        end

      #index

      def des(lan = "en")
        if(lan == "en")
          "Description"
        else
          if(lan == "al")
            "Pershkrimi"
          end
        end
      end
      def job_des(lan = "en")
        if(lan == "en")
          "Job Description"
        else
          if(lan == "al")
            "Pershkrimi i punes"
          end
        end
      end
      def skills(lan = "en")
        if(lan == "en")
          "Skills"
        else
          if(lan == "al")
            "Aftesite"
          end
        end
      end

      def about_co(lan = "en")
        if(lan == "en")
          "About Company"
        else
          if(lan == "al")
            "Rreth Kompanise"
          end
        end
      end
      def akstionet(lan = "en")
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
      def regj_poz(lan = "en")
        if(lan == "en")
          "Add new"
        else
          if(lan == "al")
            "Regjistro Poziten"
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
    def ruj(lan = "en")
      if(lan == "en")
        "Save"
      else
        if(lan == "al")
          "Ruaj"
        end
      end
    end
    def rgj_pozita(lan = "en")
      if(lan == "en")
        "Recording Position"
      else
        if(lan == "al")
          "Regjistrimi Pozites"
        end
      end
    end
    def list_p(lan = "en")
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

    def newi(lan = "en")
      if(lan == "en")
        "New Position"
      else
        if(lan == "al")
          "Pozita e re"
        end
      end
    end
end
