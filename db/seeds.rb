Hospital.destroy_all
Job.destroy_all
Staffco.destroy_all
License.destroy_all

Hospital.create!([
    { name: "Karolinska" }, { name: 'Södersjukhuset' }, { name: "Martina Childrens Hospital" },
    { name: "Stockholms Sjukhem" }, { name: "GHP Arytmi Center Stockholm" }
])

Job.create!([
    { profession: "Doctor", hospital: "Karolinska", department: "Radiology", license: "Endokrinologi", caretype: "Primary Care", scope: "Full Time", working_hours: "Day", date_start: "12122018", date_finish: "12122018"  }
])

Staffco.create!([
    { name: "Doctors r us", email: "zak@zak.com" }, { name: "Nurses 4 U", email: "rhon@rhon.com" }, { name: "Psychologists agency", email: "noel@noel.com" }, 
    { name: "Eyedoctors United", email: "rupert@rupert.com" }, { name: "Nip Tuck", email: "angie@angie.com" }
])

License.create!([
    { name: "Allmän internmedicin" }, { name: "Anestesiologi" }, { name: "Urologi" }, { name: "Lungsjukdomar" }, 
    { name: "Kirurgi" }, { name: "Allmänmedicin" }, { name: "Ortopedi" }, { name: "Ortopedi" }, { name: "Klinisk cytologi" }, 
    { name: "Hematologi" }, { name: "Medicinsk radiologi" }, { name: "Ögonsjukdomar" }, { name: "Öron-, näs- och halssjukdomar" },
    { name: "Obstetrik och gynekologi" }, { name: "Allmän kirurgi" }, { name: "Urologisk kirurgi" }, { name: "Klinisk kemi" },
    { name: "Röntgendiagnostik" }, { name: "Tumörsjukdomar" }, { name: "Europaläkarkompetens" }, { name: "Ortopedisk kirurgi" },
    { name: "Barnaålderns invärtes sjukdomar" }, { name: "Plastikkirurgi" }, { name: "Hjärtsjukdomar" }, { name: "Hudsjukdomar och veneriska sjukdomar" },
    { name: "Onkologi" }, { name: "Psykiatri" }, { name: "Företagshälsovård" }, { name: "Socialmedicin" },
    { name: "Anestesi och intensivvård" }, { name: "Barn- och ungdomsallergologi" }, { name: "Klinisk patologi" }, { name: "Barn- och ungdomsmedicin" },
    { name: "Kardiologi" }, { name: "Internmedicin" }, { name: "Klinisk bakteriologi" }, { name: "Geriatrik" }
])

Region.create!([
    { name: "Ångermanland"}, { name: "Lappland"}, { name: "Öland"}, { name: "Småland"}
])
