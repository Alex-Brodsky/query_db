


def team_color(t)
	case t
		when "Arizona Diamondbacks"
			return ["#A71930","#DBCEAC","red"]
		when "Atlanta Braves"
			return ["#002855","#BA0C2F","red"]
		when "Baltimore Orioles"
			return ["#FC4C00","#000000","red"]
		when "Boston Red Sox"
			return ["rgba(198, 12, 48, .5)", "rgba(0, 34, 68, .5)", "red","#C60C30","#002244"]
		when "Chicago Cubs"
			return ["#002F6C","#C8102E","blue"]
		when "Chicago White Sox"
			return ["#000000","#FFFFFF","black"]
		when "Cincinnati Reds"
			return ["#BA0C2F","#FFFFFF","red"]
		when "Cleveland Indians"
			return ["#D50032","#0C2340","red"]
		when "Colorado Rockies"
			return ["#24135E","#000000","blue"]
		when "Detroit Tigers"
			return ["#0C2340","#FA4614","blue"]
		when "Miami Marlins"
			return ["#F9423B","#0482CC","red"]
		when "Houston Astros"
			return ["rgba(255, 127, 0, .5)", "rgba(7, 40, 84, .5)", "red","#FF7F00","#072854"]
		when "Kansas City Royals"
			return ["#15317E","#FFFFFF","blue"]
		when "Los Angeles Angels"
			return ["#BA032E","#0C2344","red"]
		when "Los Angeles Dodgers"
			return ["#002F6C","#FFFFFF","blue"]
		when "Milwaukee Brewers"
			return ['rgba(1, 33, 67, .5)', 'rgba(196, 149, 59, .5)',"blue" ,"#012143","#C4953B"]
		when "Minnesota Twins"
			return ["#0C2341","#BA0C2E","blue"]
		when "New York Mets"
			return ["#FC4C00","#002D70","red"]
		when "New York Yankees"
			return ["#1C2841","#FFFFFF","blue"]
		when "Oakland Athletics"
			return ["#00483A","#FFBE00","green"]
		when "Philadelphia Phillies"
			return ['#BA0C2E','#FFFFFF','red']
		when "Pittsburgh Pirates"
			return ['rgba(255, 199, 43, .5)', 'rgba(0, 0, 0, .5)',"yellow", "#FFC72B","#000000"]
		when "St. Louis Cardinals"
			return ["#C41E3A","#0A2252","red"]
		when "San Diego Padres"
			return ['#002D62','#FEC325','blue']
		when 'San Francisco Giants'
			return ['#FB5B1F', '#FFFDD0','red']
		when "Seattle Mariners"
			return ['#003166','#1C8B85','blue']
		when 'Tampa Bay Rays'
			return ['#00285D','#FFD700','blue']
		when 'Texas Rangers'
			return ['#BD1021','#003279','red']
		when 'Toronto Blue Jays'
			return ['#003DA5', '#DA291C', 'blue']
		when 'Washington Nationals'
			return ['#ba122b','rgb(186, 18, 43, .5)','rgba(20, 34, 90, .5)','red']
		else
			["","",""]
	end
end


def pitch_name(p)
	case p 
		when 'CH'
			return 'Changeup'
		when 'KN'
			return 'Knuckle'
		when 'CT'
			return 'Cutter'
		when 'SI'
			return 'Sinker'
		when 'SC'
			return 'Screw'
		when 'FO'
			return 'Fork'
		when 'PI'
			return 'Pitchout'
		when 'SP'
			return 'Splitter'
		when 'SL'
			return 'Slider'
		when 'FA'
			return 'Fastball'
		when 'CU'
			return 'Curve'
		when 'IB'
			return 'I-Ball'
		else ''
	end
end

def rem_zero(s)
	string = s.to_s
	if string[0] == '0'
		string[0] = ''
	end

	while string.length < 4 do
		string << '0'
	end

	return string
end


