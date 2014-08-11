# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Project.create name: "Cat's bikes"
# Project.create name: "Tom's bikes"
# Project.create name: "Kristians's drunkness"
# Project.create name: "Kristians's hangover"
# Project.create name: "Ricard's dogs"

projects = []
project_names = ["Cat's bikes", "Tom's bikes", "Kristians's drunkness", "Kristians's hangover", "Ricard's dogs"]

project_names.each do |name|
  project = Project.find_or_initialize_by(name: name)

  if project.save!
    projects << project
  end
end

task_names = ['bombadil', 'a homer hilsen', 'get drunk', 'eat breakfast', 'pat dogs', 'bomba2']
task_status = ['todo', 'doing', 'done']

20.times do
  project_id = projects.sample.id
  task_name = task_names.sample
  status = task_status.sample
  Task.create! project_id: project_id, name: task_name, status: status
end