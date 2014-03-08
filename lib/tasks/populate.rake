namespace :db do
  task :populate => :environment do
    Movie.destroy_all
    Actor.destroy_all
    Comment.destroy_all

    #Create 20 movies
    20.times do
      Movie.create(:title => Faker::Name.name, :duration => rand(10))
    end

    #Create 100 actors
    100.times do
      Actor.create(:first_name => Faker::Name.name, :last_name => Faker::Name.name)
    end
    
    #On each movie assign a random set of different numbers of actors
    stu_range = (Actor.first.id..Actor.last.id).to_a
    Movie.all.each do |movie|
      (1..10).to_a.sample.times do
        movie.actors << Actor.find(stu_range.sample)
      end
    end
  end
end