FactoryGirl.define do

  factory :writer do
    name "Alan Rempel"
    email "alan.rempel@gmail.com"
  end

  factory :section do
    name "Westgate News"
    writer { Writer.first }
  end

  factory :article do
    title "Student-Run Newspaper Gets Off the Ground"
    content "With the core staff gathered and the website development underway,
      Westgate's student-run newspaper is well on its way to the
      first issue.".squeeze(" ").delete("\n")
    writer { Writer.first }
    section { Section.first }
  end

end
