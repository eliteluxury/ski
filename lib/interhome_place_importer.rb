require 'xmlsimple'

class InterhomePlaceImporter
  attr_accessor :xml_filename

  def initialize(xml_filename)
    @xml_filename = xml_filename
  end

  def ftp_get
    InterhomeFTP.get(@xml_filename)
  end

  # Deletes all existing Interhome places from the database and imports
  # places and subplaces (as places) from the XML file.
  def import
    InterhomePlace.delete_all
    xml_file = File.open(@xml_filename, 'rb')
    xml = XmlSimple.xml_in(xml_file)
    xml_file.close

    xml['country'].each {|c| import_country(c)} if xml
  end

  def import_country(c)
    country_name = c['name'][0]
    code = c['code'][0]
    c['regions'][0]['region'].each {|r| import_region(r, country_name, code)}
  end

  def import_region(r, name, code)
    region_name = r['name'][0]
    code = "#{code}_#{r['code'][0]}"
    name = "#{name} > #{region_name}"
    r['places'][0]['place'].each {|p| import_place(p, name, code)} unless r['places'].nil?
  end

  def import_place(p, name, code)
    place_name = p['name'][0]
    name = "#{name} > #{place_name}"
    code = "#{code}_#{p['code'][0]}"
    InterhomePlace.create!(:code => code, :name => place_name, :full_name => name)
    p['subplaces'][0]['subplace'].each {|s| import_subplace(s, name, code)} unless p['subplaces'].nil?
  end

  def import_subplace(s, name, code)
    subplace_name = s['name'][0]
    name = "#{name} > #{subplace_name}"
    code = "#{code}_#{s['code'][0]}"
    InterhomePlace.create!(:code => code, :name => subplace_name, :full_name => name)
  end
end