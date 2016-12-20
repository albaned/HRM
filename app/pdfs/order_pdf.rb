class OrderPdf < Prawn::Document
	def initialize(formularis)
		super()
		@formularis=formularis
		infos
		order_name
	end

	def order_name
		text_box "Formulari i aplikimit te #{@formularis.emri} #{@formularis.mbiemri}  ", :at => [160,700], size: 10, style: :bold
	end

	def infos
		text_box "Informatat personale" ,:at => [10,650], size: 12, style: :bold, :color => "009900" 

		horizontal_line 10, 500, :at => 635
		stroke


		text_box "Pozita:", :at => [10,625], size: 10, style: :bold
		text_box "#{@formularis.pozita}", :at => [250,625], size: 9

		text_box "Emri", :at => [10,610], size: 10, style: :bold
		text_box "#{@formularis.emri}", :at => [250,610], size: 9

		text_box "Mbiemri", :at => [10,595], size: 10, style: :bold
		text_box "#{@formularis.mbiemri}", :at => [250,595], size: 9

		text_box "Ditelindja", :at => [10,580], size: 10, style: :bold
		text_box "#{@formularis.ditelindja}", :at => [250,580], size: 9

		text_box "Vendlindja", :at => [10,565], size: 10, style: :bold
		text_box "#{@formularis.vendlindja}", :at => [250,565], size: 9

		text_box "Nacionaliteti", :at => [10,550], size: 10, style: :bold
		text_box "#{@formularis.nacionaliteti}", :at => [250,550], size: 9

		text_box "Leternjoftimi", :at => [10,535], size: 10, style: :bold
		text_box "#{@formularis.leternjoftimi}", :at => [250,535], size: 9

		text_box "Telefoni", :at => [10,520], size: 10, style: :bold
		text_box "#{@formularis.tel}", :at => [250,520], size: 9

		text_box "Email", :at => [10,505], size: 10, style: :bold
		text_box "#{@formularis.email}", :at => [250,505], size: 9

		text_box "Informatat per edukim", :at => [10,480], size: 12, style: :bold

		horizontal_line 10, 500, :at => 465
		stroke

		text_box "Edukimi from", :at => [10,455], size: 10, style: :bold
		text_box "#{@formularis.edukimi_from}", :at => [250,455], size: 9

		text_box "Edukimi to", :at => [10,440], size: 10, style: :bold
		text_box "#{@formularis.edukimi_to}", :at => [250,440], size: 9

		text_box "Edukimi institucioni", :at => [10,425], size: 10, style: :bold
		text_box "#{@formularis.edukimi_institucioni}", :at => [250,425], size: 9

		text_box "Edukimi drejtimi", :at => [10,410], size: 10, style: :bold
		text_box "#{@formularis.edukimi_drejtimi}", :at => [250,410], size: 9

		text_box "Edukimi titulli", :at => [10,395], size: 10, style: :bold
		text_box "#{@formularis.edukimi_titulli}", :at => [250,395], size: 9

		text_box "Informatat per eksperience", :at => [10,370], size: 12, style: :bold

		horizontal_line 10, 500, :at => 355
		stroke

		text_box "Eksperienca from", :at => [10,345], size: 10, style: :bold
		text_box "#{@formularis.eksperienca_from}", :at => [250,345], size: 9

		text_box "Eksperienca to", :at => [10,330], size: 10, style: :bold
		text_box "#{@formularis.eksperienca_to}", :at => [250,330], size: 9

		text_box "Eksperienca kompania", :at => [10,315], size: 10, style: :bold
		text_box "#{@formularis.eksperienca_kompania}", :at => [250,315], size: 9

		text_box "Eksperienca pozita", :at => [10,300], size: 10, style: :bold
		text_box "#{@formularis.eksperienca_pozita}", :at => [250,300], size: 9

		text_box "Informatat te pergjithshme", :at => [10,275], size: 12, style: :bold

		horizontal_line 10, 500, :at => 260
		stroke

		text_box "Gjuha", :at => [10,250], size: 10, style: :bold
		text_box "#{@formularis.gjuha}", :at => [250,250], size: 9

		text_box "Gjuha Niveli", :at => [10,235], size: 10, style: :bold
		text_box "#{@formularis.gjuha_niveli}", :at => [250,235], size: 9

		text_box "Njohurit kompjuterike", :at => [10,220], size: 10, style: :bold
		text_box "#{@formularis.njohurit_kompjuterike}", :at => [250,220], size: 9

		text_box "Dokumente shtese", :at => [10,195], size: 12, style: :bold

		horizontal_line 10, 500, :at => 180
		stroke

		text_box "Referenca emri", :at => [10,170], size: 10, style: :bold
		text_box "#{@formularis.referenca_emri}", :at => [250,170], size: 9

		text_box "Referenca file", :at => [10,155], size: 10, style: :bold
		text_box "#{@formularis.referenca_file}", :at => [250,155], size: 9

		text_box "Rezultatet e vleresimit", :at => [10,130], size: 12, style: :bold

		horizontal_line 10, 500, :at => 115
		stroke

		text_box "Intervista", :at => [10,105], size: 10, style: :bold
		text_box "#{@formularis.intervista}", :at => [250,105], size: 9


		text_box "Testet", :at => [10,70], size: 10, style: :bold
		text_box "#{@formularis.testet}", :at => [250,70], size: 9

		text_box "Kontrata from", :at => [10,40], size: 10, style: :bold
		text_box "#{@formularis.kontrata_from}", :at => [250,40], size: 9

		text_box "Kontrata to", :at => [10,25], size: 10, style: :bold
		text_box "#{@formularis.kontrata_to}", :at => [250,25], size: 9

		text_box "Paga", :at => [10,10], size: 10, style: :bold
		text_box "#{@formularis.page}", :at => [250,10], size: 9





	end
end