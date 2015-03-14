model "BMW","+5"
model "Citroen","+4"
model "Fiat","+3"
model "Ford","+4"
model "Mercedes","+5"
model "Nissan","+4"
model "Opel","+4"
model "Volvo","+5"

zip "58937","+9"
zip "58726","+5"
zip "58647","+3"

licenseAge 0..1,"+3"
licenseAge 2..3,"+4"
licenseAge 4..15,"+4.5"
licenseAge 16..99,"+5"

gender "M","+1"
gender "K","+1"

age 18..20,"+2.5"
age 21..23,"+3"
age 24..26,"+3.5"
age 27..29,"+4"
age 30..39,"+4.5"
age 40..64,"+5"
age 65..70,"+4"
age 71..99,"+3"

om @gender == "M",@licenseAge < 3,"*0.9"
om @model == "Volvo",@zip.start_with?("58"),"*1.2"

