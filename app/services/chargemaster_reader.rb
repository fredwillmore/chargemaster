class ChargemasterReaderFile
end

class ChargemasterReaderRow
  attr_accessor :roo_row

  def initialize(roo_row)
    @roo_row = roo_row
  end

  def valid?
    # roo_row[0].value.present? &&
     roo_row[1].value.is_a?(String) &&
     roo_row[2].value.is_a?(Numeric)
  end
end

class ChargemasterReader
  @valid_files = []
  @invalid_files = []

  def read_files
    Hospital.destroy_all

    Hospital::transaction do
      file_directory_entries.each do |file_name|
        self.hospital_name = file_name

        process_file
      end
    end

    puts Hospital.count
  end

  private
  
  attr_accessor :hospital_name

  def file_directory
    '/Users/fredwillmore/Desktop/2023'
  end

  def xlsx(file)
    Roo::Spreadsheet.open(file)
  end

  def prompt(prompt:, options: {})
    puts prompt

  end

  def sheet(xlsx)
    sheets = []
    cdm_matches = []
    xlsx.each_with_pagename do |pagename, page|
      row = 0
      begin
        puts pagename
        prompt(prompt: "is this a CDM sheet?")
        puts "is this a CDM sheet?
        #{preview_page(page)}
        y for yes
        n for no"
        response = gets.strip
        case response
        when 'y'
          puts 'yes'
          cdm_matches << pagename
        when 'n'
          puts 'no'
        when '?'
          row += 1
          puts 'showing a row'
          puts page.row row
        end
      end until response.in? ['y', 'n']
    end

    puts "CDM sheets for #{hospital_name}"
    puts cdm_matches.to_s

    xlsx.each_with_pagename do |pagename, page|
      if pagename.in? cdm_matches
        row = 0
        begin
          puts "Sheet: #{pagename}"
          puts "is this the header row?
          y for yes
          n for no
          N if there is no header row"
          puts page.row row
          response = gets.strip

          case response
          when 'y'
            puts 'yes'

          when 'N'
            puts 'NO'
          when 'n'
            puts 'no'
            row += 1
          end
  
          debugger
        end until response.in? ['y', 'N']
      end
    end
    cdm_matches.each do
    end
    $stdin.gets
  end

  def preview_page(page)
    (1..5).map do |index|
      page.row(index).to_s unless page.row(index).all? &:nil?
    end
    .join("\n")
  end

  def directory_entries(directory)
    Dir.entries(directory).filter { |e| !e.in?(['.', '..', '.DS_Store']) }
  end

  def file_directory_entries
    directory_entries(file_directory)
  end

  def hospital_directory_entries
    directory_entries("#{file_directory}/#{hospital_name}/")
  end

  def process_file
    puts "\nhellooo #{hospital_name}"
    begin
      files = hospital_directory_entries.filter { |e| e.match? /(CDM|CMD|Chargemaster).*(csv|xls|xlsx)$/i }
      if files.count > 0
        if files.count > 1
          puts files.count.to_s + " FILES FOUND for #{hospital_name}: " + files.to_s
        else
          sheet(xlsx("#{file_directory}/#{hospital_name}/#{files[0]}"))
          hospital = Hospital.where(name: hospital_name).first_or_create(name: hospital_name)
        end
      else
        puts "ALERT! is no file for #{hospital_name}" + hospital_directory_entries.to_s
      end
    rescue => e
      puts "ALERT! something wrong #{hospital_name}" + hospital_directory_entries.to_s
      puts e
    end
  end
end
