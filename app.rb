require 'sinatra'
require 'csv'


	get '/' do

		print 'test'

		@query_dat = CSV.read('public/queries.txt', col_sep: "\t")
		keys = @query_dat[0]
		@query_dat.shift
		@query_dat = @query_dat.map { |a| Hash[ keys.zip(a) ] }

		erb :main_page

	end

	post '/submit_query' do

		print params['query'].gsub(/"/,'&quot;')

		CSV.open('public/queries.txt', "a+", col_sep: "\t") do |csv|

			o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
			id = (0...24).map { o[rand(o.length)] }.join

			csv << [id,params['title'],params['desc'],params['tags'],params['query'].gsub('"','&quot;')]
		
		end

		@query_dat = CSV.read('public/queries.txt', col_sep: "\t")
		keys = @query_dat[0]
		@query_dat.shift
		@query_dat = @query_dat.map { |a| Hash[ keys.zip(a) ] }

		erb :main_page


	end

	post '/delete_query' do 

		@query_dat = CSV.read('public/queries.txt', col_sep: "\t")
		headers = @query_dat[0]
		@query_dat.shift
		@new_dat = []
		@new_dat << headers
		@query_dat.each do |row|
			if row[0] != params['query_id'] then
				@new_dat << row
			end
		end

		CSV.open('public/queries.txt','wb', col_sep: "\t") do |csv|
			@new_dat.each do |row|
				csv << row
			end
		end
		@new_dat.shift
		@query_dat = @new_dat.map { |a| Hash[headers.zip(a)] }

		erb :main_page
	end


	post '/search_query' do

		@query_dat = CSV.read('public/queries.txt', col_sep: "\t")
		keys = @query_dat[0]
		@query_dat.shift
		@new_dat = []
		@query_dat.each do |row|
			if 
				(row[1].downcase.include? params['search'].downcase) or
				(row[2].downcase.include? params['search'].downcase) or
				(row[3].downcase.include? params['search'].downcase) then
				@new_dat << row
			end
		end
		@query_dat = @new_dat
		@query_dat = @query_dat.map { |a| Hash[ keys.zip(a) ] }
		

		@search_term = params[:search]

		erb :main_page
	end

	post '/edit_query' do 

		@query_dat = CSV.read('public/queries.txt', col_sep: "\t")
		headers = @query_dat[0]
		@query_dat.shift
		@new_dat = []
		@new_dat << headers
		@query_dat.each do |row|
			if row[0] != params['edit-query-id'] then
				@new_dat << row
			end
		end

		@new_dat << [params['edit-query-id'],params['edit-title'],params['edit-desc'],params['edit-tags'],params['edit-query'].gsub('"','&quot;')]

		CSV.open('public/queries.txt','wb', col_sep: "\t") do |csv|
			
			@new_dat.each { |row| csv << row }
			
		end
		@new_dat.shift
		@query_dat = @new_dat.map { |a| Hash[headers.zip(a)] }

		erb :main_page

	end






