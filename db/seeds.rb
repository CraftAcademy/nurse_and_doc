User.destroy_all
Job.destroy_all
Hospital.destroy_all

Staffco.destroy_all
License.destroy_all
Region.destroy_all
Profession.destroy_all
Department.destroy_all
CareType.destroy_all
OtherRequirement.destroy_all

ångermanland = Region.create!(name: 'Ångermanland')
karro = Hospital.create!(name: 'Karolinska', region: ångermanland)
south = Hospital.create!( name: 'Södersjukhuset', region: ångermanland)

lappland = Region.create!(name: 'Lappland')
Hospital.create!([
    { name: 'Martina Childrens Hospital', region: lappland }
])

öland = Region.create!(name: 'öland')
Hospital.create!([
    { name: 'Stockholms Sjukhem', region: öland }
])

småland = Region.create!(name: 'småland')
Hospital.create!([
    { name: 'GHP Arytmi Center Stockholm', region: småland },
])

Department.create!([
    { name: "Surgery" },
    { name: "Quarantine" }
])

Staffco.create!([
    { name: "Doctors r us", email: "zak@zak.com" }, 
    { name: "Nurses 4 U", email: "rhon@rhon.com" }, 
    { name: "Psychologists agency", email: "noel@noel.com" }, 
    { name: "Eyedoctors United", email: "rupert@rupert.com" }, 
    { name: "Nip Tuck", email: "angie@angie.com" }
])

Job.create!([
    { profession: "Doctor", hospital: karro, department: "Radiology", 
      license: "Endokrinologi", care_type: "Primary Care", scope: "Full Time", 
      working_hours: "Day", date_start: "12-12-2018", date_finish: "12-12-2018",
      requirements: "A well rounded doctor who cares about his patients.",
      other_requirements: "Previous experience with team management is a plus",
      description: "You will be working as a doctor in a team and other stuff.",
      years_experience: 7, application_deadline: "10-01-2019", accomodation_arrangement: true,
      accomodation_budget: "1000:- per month", accomodation_comment: "Many hostels to choose from",
      travel_arranged: true, travel_budget: "70% of all expenses", travel_comment: "Walking/running is good for you.",
      other_pay: true, other_budget: "100kr per day", other_comment: "Other expenses.",
      reference_number: "101020304050"  },

    { profession: "Nurse", hospital: south, department: "Surgery", 
      license: "Ortopedi", care_type: "Home Care", scope: "Part Time", 
      working_hours: "Day", date_start: "12-12-2018", date_finish: "12-12-2018",
      requirements: "Private surgery travelling around all of Stockholm.",
      other_requirements: "Previous experience with team management is a plus",
      description: "You will have your own company car and it is going to be great.",
      years_experience: 3, application_deadline: "12-01-2019", accomodation_arrangement: true,
      accomodation_budget: "4000:- per month", accomodation_comment: "Many Air BnBs to choose from",
      travel_arranged: true, travel_budget: "20% of all expenses", travel_comment: "Drive fast.",
      other_pay: true, other_budget: "100kr per day", other_comment: "Other expenses.",
      reference_number: "202032145413"  }
])

License.create!([
    { name: "Allmän internmedicin" }, { name: "Anestesiologi" }, 
    { name: "Urologi" }, { name: "Lungsjukdomar" }, 
    { name: "Kirurgi" }, { name: "Allmänmedicin" }, 
    { name: "Ortopedi" }, { name: "Ortopedi" }, 
    { name: "Klinisk cytologi" }, { name: "Hematologi" },
    { name: "Medicinsk radiologi" }, { name: "Ögonsjukdomar" }, 
    { name: "Öron-, näs- och halssjukdomar" }, { name: "Obstetrik och gynekologi" },
    { name: "Allmän kirurgi" }, { name: "Urologisk kirurgi" }, 
    { name: "Klinisk kemi" }, { name: "Röntgendiagnostik" },
    { name: "Tumörsjukdomar" }, { name: "Europaläkarkompetens" }, 
    { name: "Ortopedisk kirurgi" }, { name: "Barnaålderns invärtes sjukdomar" }, 
    { name: "Plastikkirurgi" }, { name: "Hjärtsjukdomar" }, 
    { name: "Hudsjukdomar och veneriska sjukdomar" }, { name: "Onkologi" }, 
    { name: "Psykiatri" }, { name: "Företagshälsovård" }, 
    { name: "Socialmedicin" }, { name: "Anestesi och intensivvård" }, 
    { name: "Barn- och ungdomsallergologi" }, { name: "Klinisk patologi" }, 
    { name: "Barn- och ungdomsmedicin" }, { name: "Kardiologi" }, 
    { name: "Internmedicin" }, { name: "Klinisk bakteriologi" }, 
    { name: "Geriatrik" }
])

Profession.create!([
    { name: "Doctor" },
    { name: "Nurse" },
    { name: "Assistant Nurse" }
])

CareType.create!([
    { name: "Homecare" },
    { name: "Primarycare" },
    { name: "Hospital" },
    { name: "Geriatric" },
    { name: "Other" }
])

OtherRequirement.create!([
    { name: "Drivers License" },
    { name: "Prescription" },
    { name: "SITHS Card" }
])
