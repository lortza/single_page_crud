module CrittersHelper
  def display_description(critter)
    vowels = %w(a e i o u h)
    indefinite_article = 'a'
    indefinite_article = 'an' if critter.color.present? && vowels.include?(critter.color[0].downcase)

    preposition = 'in'
    preposition = 'on' if critter.city.name.downcase.match('isla')

    "is #{indefinite_article} #{critter.color} critter who lives #{preposition} #{critter.city.name}"
  end
end
