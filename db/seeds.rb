Hospital.destroy_all
Job.destroy_all
Staffco.destroy_all
License.destroy_all

Hospital.create!([
    { name: "Karolinska" }, { name: 'Södersjukhuset' }, { name: "Martina Childrens Hospital" },
    { name: "Stockholms Sjukhem" }, { name: "GHP Arytmi Center Stockholm" }
])

Job.create!([
    { name: "Doctor" }, { name: "Nurse" }, { name: "Assistant Nurse" }
])

Staffco.create!([
    { name: "Doctors r us" }, { name: "Nurses 4 U" }, { name: "Psychologists agency" }, 
    { name: "Eyedoctors United" }
])

License.create!([
    { name: "Allmän internmedicin" }, { name: "Anestesiologi" }, { name: "Urologi" }, 
    { name: "Kirurgi" }, { name: "Allmänmedicin" }, { name: "Ortopedi" }
])