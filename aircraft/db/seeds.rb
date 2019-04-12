# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airplane.destroy_all

Airplane.create(manufacture:"Airbus", name:"A318", family:"A320", range:"3100 nm", typical_seating: 107, overall_length: "103 ft 2 in", height:"41 ft 2 in", wing_span: "111 ft 11 in", img_length:"https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A318_R.png?wid=1000&amp;fit=constrain,1&amp;fmt=png-alpha", img_height: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A318_F.png?wid=1000&amp;fit=constrain,1&amp;fmt=png-alpha", img_wing_span: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A318_T.png?wid=1000&amp;fit=constrain,1&amp;fmt=png-alpha")
Airplane.create(manufacture:"Airbus", name:"A319 neo", family:"A320", range:"3700 nm", typical_seating: 140, overall_length: "111 ft 0 in", height:"38 ft 7 in", wing_span: "117 ft 5 in", img_length:"https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A319neo_CFM_AIB_VR.png?wid=1000&fit=constrain,1&fmt=png-alpha", img_height: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A319neo_CFM_AIB_VF.png?wid=1000&fit=constrain,1&fmt=png-alpha", img_wing_span: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A319neo_CFM_AIB_VT.png?wid=1000&fit=constrain,1&fmt=png-alpha")
Airplane.create(manufacture:"Airbus", name: "A320 neo", family: "A320", range: "3400 nm", typical_seating: 165, overall_length: "123 ft 3 in", height: "38 ft 7 in", wing_span: "117 ft 5 in", img_length: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A320neo_CFM_AIB_VR.png?wid=1000&fit=constrain,1&fmt=png-alpha", img_height: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A320neo_CFM_AIB_VF.png?wid=1000&fit=constrain,1&fmt=png-alpha", img_wing_span: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A320neo_CFM_AIB_VT.png?wid=1000&fit=constrain,1&fmt=png-alpha")
Airplane.create(manufacture:"Airbus", name: "A321 neo", family: "A320", range: "4000 nm", typical_seating: 206, overall_length: "146 ft 0 in", height: "38 ft 7 in", wing_span: "117 ft 5 in", img_length: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A321neo_CFM_AIB_VR.png?wid=1000&fit=constrain,1&fmt=png-alpha", img_height: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A321neo_CFM_AIB_VF.png?wid=1000&fit=constrain,1&fmt=png-alpha", img_wing_span: "https://airbus-h.assetsadobe2.com/is/image/content/dam/channel-specific/website-/products-and-services/aircraft/aircraft_specifications/passengers/A321neo_CFM_AIB_VT.png?wid=1000&fit=constrain,1&fmt=png-alpha")
# Airplane.create(name:, family:, range:, typical_seating:, overall_length:, height:, wing_span:, img_length:, img_height:, img_wing_span:)