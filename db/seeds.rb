Hospital.destroy_all
Job.destroy_all

Hospital.create!(name: "Karolinska")
Hospital.create!(name: "Södersjukhuset")
Hospital.create!(name: "Martina Children's Hospital")
Hospital.create!(name: "Stockholms Sjukhem")
Hospital.create!(name: "GHP Arytmi Center Stockholm")

Job.create!(name: "Doctor")
Job.create!(name: "Nurse")
Job.create!(name: "Assistant Nurse")


