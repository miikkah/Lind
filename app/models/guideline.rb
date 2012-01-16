class Guideline < ActiveRecord::Base
  has_and_belongs_to_many :categories
  
  def self.search(search)
    words = search.split(' ')
    conditions = []
    words.each do |word|
      conditions.push('(name LIKE "%' + word + '%" OR description1 LIKE "%' + word + '%")')
    end
    find(:all, :conditions => conditions.join(' AND '))
  end
  
  def profileNames
    names = []
    self.profiles.split(',').each do |profile|
      case profile
      when "20"
        names.push("A") # Astmaattinen tai allerginen
      when "15"
        names.push("AP") # Avustettu pyörätuolin käyttäjä
      when "8"
        names.push("E") # Epävarmasti kävelevä
      when "7"
        names.push("N") # Heikkonäköinen
      when "1"
        names.push("K") # Huonokuuloinen tai kuuro
      when "25"
        names.push("M") # Huonomuistinen
      when "14"
        names.push("IP") # Itsenäinen pyörätuolin käyttäjä
      when "16"
        names.push("T") # Käsien tai ylävartalon toimintarajoitteinen
      when "11"
        names.push("R") # Rollaattorin käyttäjä
      when "3"
        names.push("S") # Sokea
      when "26"
        names.push("Y") # Yleinen
      end
    end
    return names.join(', ')
  end
end
