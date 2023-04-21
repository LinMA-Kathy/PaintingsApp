# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
artist1 = Artist.create(first_name: "Vincent", last_name: "van Gogh")
artist2 = Artist.create(first_name: "Edvard", last_name: "Munch")
artist3 = Artist.create(first_name: "Leonardo", last_name: "da Vinci")
artist4 = Artist.create(first_name: "Johannes", last_name: "Vermeer")
artist5 = Artist.create(first_name: "Claude", last_name: "Monet")
artist6 = Artist.create(first_name: "Salvador", last_name: "Dalí")
artist7 = Artist.create(first_name: "Georgia", last_name: "O'Keeffe")
artist8 = Artist.create(first_name: "Frida", last_name: "Kahlo")
artist9 = Artist.create(first_name: "Gustav", last_name: "Klimt")

painting1 = Painting.create(
  title: "The Starry Night",
  image_url: "https://sanctuarymentalhealth.org/wp-content/uploads/2021/03/The-Starry-Night-1200x630-1.jpg",
  description: "The Starry Night is an oil-on-canvas painting by the Dutch Post-Impressionist painter Vincent van Gogh. Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-Rémy-de-Provence, just before sunrise, with the addition of an imaginary village.It has been in the permanent collection of the Museum of Modern Art in New York City since 1941, acquired through the Lillie P. Bliss Bequest. Widely regarded as Van Gogh's magnum opus,The Starry Night is one of the most recognizable paintings in Western art.",
  year: 1889,
  artist: artist1,
  views: 0
)

puts "Painting 1 created: #{painting1.inspect}"

painting2 = Painting.create(
  title: "The Scream",
  image_url: "https://media.npr.org/assets/img/2012/04/30/scream_custom-9ef574d2014bd441879317ecf242ad060e34e743-s1100-c50.jpg",
  description: "The Scream is a composition created by Norwegian artist Edvard Munch in 1893. The Norwegian name of the piece is Skrik (Shriek), and the German title under which it was first exhibited Der Schrei der Natur (The Scream of Nature).The agonized face in the painting has become one of the most iconic images of art, seen as symbolizing the anxiety of the human condition. Munch's work, including The Scream, would go on to have a formative influence on the Expressionist movement.",
  year: 1893,
  artist: artist2,
  views: 0
)

puts "Painting 2 created: #{painting2.inspect}"

painting3 = Painting.create(
  title: "Mona Lisa",
  image_url: "https://cdn.pariscityvision.com/library/image/5449.jpg",
  description: "The Mona Lisa is a half-length portrait painting by Italian artist Leonardo da Vinci.Considered an archetypal masterpiece of the Italian Renaissance,it has been described as the best known, the most visited, the most written about, the most sung about, the most parodied work of art in the world.The painting's novel qualities include the subject's enigmatic expression,monumentality of the composition, the subtle modelling of forms, and the atmospheric illusionism.",
  year: 1503,
  artist: artist3,
  views: 0
)

painting4 = Painting.create(
  title: "Girl with a Pearl Earring",
  image_url: "https://lh3.googleusercontent.com/J0sw0IiqP2F4gavYnI-vUa5IBgHiHy42lohgm-qq1vuygUX0HQgylVSV1ZdDTV5XIg=s1200",
  description: "The painting is a tronie, the Dutch 17th-century description of a head that was not meant to be a portrait. It depicts a European girl wearing exotic dress, an oriental turban, and what appears to be a very large pearl as an earring.In 2014, Dutch astrophysicist Vincent Icke [nl] raised doubts about the material of the earring and argued that it looks more like polished tin than pearl on the grounds of the specular reflection, the pear shape and the large size of the earring.",
  year: 1665,
  artist: artist4,
  views: 0
)

painting5 = Painting.create(
  title: "Sunflowers",
  image_url: "https://iiif.micr.io/TZCqF/full/1280,/0/default.jpg",
  description: "Sunflowers (original title, in French: Tournesols) is the title of two series of still life paintings by the Dutch painter Vincent van Gogh. The first series, executed in Paris in 1887, depicts the flowers lying on the ground, while the second set, made a year later in Arles, shows a bouquet of sunflowers in a vase. In the artist's mind, both sets were linked by the name of his friend Paul Gauguin, who acquired two of the Paris versions. About eight months later, Van Gogh hoped to welcome and impress Gauguin again with Sunflowers, now part of the painted Décoration for the Yellow House that he prepared for the guestroom of his home in Arles, where Gauguin was supposed to stay. After Gauguin's departure, Van Gogh imagined the two major versions as wings of the Berceuse Triptych, and finally, he included them in his Les XX in Bruxelles exhibit.",
  year: 1888,
  artist: artist1,
  views: 0
)

painting6 = Painting.create(
  title: "The Persistence of Memory",
  image_url: "https://uploads6.wikiart.org/images/salvador-dali/the-persistence-of-memory-1931.jpg!Large.jpg",
  description: "The Persistence of Memory (Catalan: La persistència de la memòria) is a 1931 painting by artist Salvador Dalí and one of the most recognizable works of Surrealism. First shown at the Julien Levy Gallery in 1932, since 1934 the painting has been in the collection of the Museum of Modern Art (MoMA) in New York City, which received it from an anonymous donor. It is widely recognized and frequently referred to in popular culture,[1] and sometimes referred to by more descriptive titles, such as Melting Clocks, The Soft Watches or The Melting Watches.",
  year: 1931,
  artist: artist6,
  views: 0
)

painting7 = Painting.create(
  title: "Head of a Woman",
  image_url: "https://cdn.britannica.com/45/198845-050-0555C7C0/Head-Woman-oil-earth-poplar-wood-lead.jpg",
  description: "Head of a Woman, a small brush drawing with pigment, depicts a young woman with her head tilted and her eyes downcast. Her posture recalls the Virgin Mary in Leonardo’s The Virgin of the Rocks, suggesting that the drawing may have served as a model. The drawing’s nickname, La scapigliata, translates to “disheveled” and refers to the young woman’s wayward strands of hair. The loosely sketched tendrils and shoulders contrast with the highly finished face, where Leonardo gently modeled the woman’s delicate features, from her heavy eyelids to her tender lips. It reveals Leonardo’s fluid means of working, utilizing both expressive drawing to create form and controlled layering to provide detail.",
  year: 1500,
  artist: artist3,
  views: 0
)

painting8 = Painting.create(
  title: "The Two Fridas",
  image_url: "https://m.media-amazon.com/images/I/61zItRGjWzL._AC_UF894,1000_QL80_.jpg",
  description: "The Two Fridas (Las dos Fridas in Spanish) is an oil painting by Mexican artist Frida Kahlo. The painting was the first large-scale work done by Kahlo and is considered one of her most notable paintings.[1] It is a double self-portrait, depicting two versions of Kahlo seated together. One is wearing a white European-style Victorian dress while the other is wearing a traditional Tehuana dress.The painting is housed at the Museo de Arte Moderno in Mexico City.",
  year: 1939,
  artist: artist8,
  views: 0
)

painting9 = Painting.create(
  title: "Water Lilies",
  image_url: "https://collectionapi.metmuseum.org/api/collection/v1/iiif/438008/preview",
  description: "Water Lilies is a series of approximately 250 oil paintings by French Impressionist Claude Monet (1840–1926). The paintings depict his flower garden at his home in Giverny, and were the main focus of his artistic production during the last thirty years of his life. Many of the works were painted while Monet suffered from cataracts.",
  year: 1919,
  artist: artist5,
  views: 0
)

painting10 = Painting.create(
  title: "The Kiss",
  image_url: "https://lh3.googleusercontent.com/7aJyS2Nd7c8oCJKmfXlmM-rnSnLMY0ykfBFOP8N3OjV6M4hbhS_NEg8tH6SJDfvl=s1200",
  description: "The Kiss (in German Der Kuss) is an oil-on-canvas painting with added gold leaf, silver and platinum by the Austrian Symbolist painter Gustav Klimt.It was painted at some point in 1907 and 1908, during the height of what scholars call his Golden Period. It was exhibited in 1908 under the title Liebespaar (the lovers) as stated in the catalogue of the exhibition. The painting depicts a couple embracing each other, their bodies entwined in elaborate beautiful robes decorated in a style influenced by the contemporary Art Nouveau style and the organic forms of the earlier Arts and Crafts movement.",
  year: 1908,
  artist: artist9,
  views: 0
)
