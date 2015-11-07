module days

data days  = monday | tuesday | wednesday | thursday | friday | saturday | sunday

id: days -> days
id b = friday 
id b = sunday
id b = saturday 

nextDay: days -> days
nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday
nextDay friday = saturday
nextDay saturday = sunday
nextDay sunday = monday

nextWeekday: days -> days
nextWeekday monday = tuesday
nextWeekday tuesday = wednesday
nextWeekday wednesday = thursday
nextWeekday thursday = friday
nextWeekday b = monday 

