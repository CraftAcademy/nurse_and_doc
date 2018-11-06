Hospital.destroy_all
Job.destroy_all
Staffco.destroy_all
License.destroy_all

Hospital.create!(name: "Karolinska")
Hospital.create!(name: "Södersjukhuset")
Hospital.create!(name: "Martina Children's Hospital")
Hospital.create!(name: "Stockholms Sjukhem")
Hospital.create!(name: "GHP Arytmi Center Stockholm")

Job.create!(name: "Doctor")
Job.create!(name: "Nurse")
Job.create!(name: "Assistant Nurse")

Staffco.create!(name: "Doctors r us")
Staffco.create!(name: "Nurses 4 U")
Staffco.create!(name: "Psychologists agency")
Staffco.create!(name: "Eyedoctors United")

License.create!([{ name: 'Allmän internmedicin' }, { name: 'Anestesiologi'}, { name: 'Urologi'}, { name: 'Kirurgi'}, { name: 'Allmänmedicin'}, { name: 'Ortopedi'}])