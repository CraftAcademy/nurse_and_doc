Hospital.destroy_all
Job.destroy_all
Staffco.destroy_all

Hospital.create!(name: "Karolinska")
Hospital.create!(name: "Södersjukhuset")
Hospital.create!(name: "Martina Children's Hospital")
Hospital.create!(name: "Stockholms Sjukhem")
Hospital.create!(name: "GHP Arytmi Center Stockholm")

Job.create!(name: "Doctor")
Job.create!(name: "Nurse")
Job.create!(name: "Assistant Nurse")

Staffco.create!(name: "Doctors r us", email: "company1@me.com")
Staffco.create!(name: "Nurses 4 U", email: "company2@me.com")
Staffco.create!(name: "Psychologists agency", email: "company3@me.com")
Staffco.create!(name: "Eyedoctors United", email: "company4@me.com")
