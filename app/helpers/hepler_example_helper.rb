# app/helpers/table_helper.rb
module HeplerExampleHelper
  def self.format_date(date)
    date.strftime("%B %d, %Y")
  end
  
  def generate_table(data)
    html = "<table>"
    data.each do |row|
      html += "<tr>"
      row.each do |cell|
        html += "<td>#{cell}</td>"
      end
      html += "</tr>"
    end
    html += "</table>"
    html.html_safe
  end
end
