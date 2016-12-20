class OrderPdf2 < Prawn::Document
	def initialize(kontrata)
		super()
		@kontrata=kontrata
		order_name
		infos
	end

	def order_name
		text_box "Në mbështetje të nenit 10 të rregullores së .........-ut, nr 2001/27 për Ligjin Themelor të Punës, palët kontraktuese si subjekte të marrëdhënies juridike të punës lidhin këtë:", at: [10,700], size: 7 
		text_box "KONTRATË PUNE", at: [180,660], size: 14, style: :bold
	end

	def infos
		text_box "E lidhur ndërmjet:", at: [10,640], size: 6
		text_box  "(1) #{@kontrata.biznesi} me seli ne Prishtinë, Republika e Kosovës dhe me numër të biznesit #{@kontrata.nr_biznesit} të lëshuar nga Ministria e Tregtisë dhe Industrisë e Republikës së Kosovës, 
				të cilën e përfaqëson Armend Osaj  nga një anë si punëdhënës", at: [10,630], size: 6


		text_box "dhe", at:[10,610],size: 6
		text_box "(2) #{@kontrata.emri} / #{@kontrata.emri_prindit} / #{@kontrata.mbiemri}, i lindur në #{@kontrata.vendlindja} me datë #{@kontrata.ditelindja} me adresë #{@kontrata.adresa} / #{@kontrata.qyteti} / #{@kontrata.shteti} dhe me numër të letërnjoftimit #{@kontrata.leternjoftimi} të lëshuar nga Mentor Sahiti, nga ana tjetër si punëmarrës. ", at:[10,595], size:6
	
		text_box "Neni 1", at:[240,570], size:8, style: :bold
		text_box "Punëdhënësi i ofron, ndërsa punëmarrësi pranon të themelojë marrëdhënie juridike të punës me punëdhënësin dhe caktohet në vendin e punës #{@kontrata.pozita} .
				  Punët kryesore të këtij vendi të punës janë të përshkruara në përshkrimin e punës.
				  Punëmarrësi është i detyruar të kryejë edhe punë tjera, për të cilat ka përgatitje profesionale dhe aftësi pune, për të cilat urdhëron personi i autorizuar i punëdhënësit. ", at:[10,555], size:6

		text_box "Neni 2", at:[240,525],size: 8, style: :bold
		text_box "Kjo kontratë hyn në fuqi me datë #{@kontrata.kontrata_prej} dhe vlen deri me datë #{@kontrata.kontrata_deri}", at:[10,510], size: 6


	end

end