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