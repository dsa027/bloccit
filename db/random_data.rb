module RandomData

    @sent = "The dog smells bad meow meow, i tell my human but eat prawns daintily with a claw then lick paws clean wash down prawns with a lap of carnation milk then retire to the warmest spot on the couch to claw at the fabric before taking a catnap yet licks paws. Cat dog hate mouse eat string barf pillow no baths hate everything claws in your leg this human feeds me, i should be a god pet my belly, you know you want to; seize the hand and shred it! woops poop hanging from butt must get rid run run around house drag poop on floor maybe it comes off woops left brown marks on floor human slave clean lick butt now crash against wall but walk away like nothing happened ask to go outside and ask to come inside and ask to go outside and ask to come inside. Lie on your belly and purr when you are asleep i could pee on this if i had the energy massacre a bird in the living room and then look like the cutest and most innocent animal on the planet eat the fat cats food furrier and even more furrier hairball jump on human and sleep on her all night long be long in the bed, purr in the morning and then give a bite to every human around for not waking up request food, purr loud scratch the walls, the floor, the windows, the humans. I like big cats and i can not lie ignore the human until she needs to get up, then climb on her lap and sprawl sweet beast, and kitty kitty for ignore the squirrels, you'll never catch them anyway spot something, big eyes, big eyes, crouch, shake butt, prepare to pounce. Gate keepers of hell lick butt and make a weird face relentlessly pursues moth and meow to be let in scratch the box going to catch the red dot today going to catch the red dot today but sit and stare. Purr. Swat turds around the house sniff catnip and act crazy chase dog then run away prance along on top of the garden fence, annoy the neighbor's dog and make it bark for if human is on laptop sit on the keyboard groom yourself 4 hours - checked, have your beauty sleep 18 hours - checked, be fabulous for the rest of the day - checked. If it fits, i sits fight an alligator and win for need to chase tail, for terrorize the hundred-and-twenty-pound rottweiler and steal his bed, not sorry scream at teh bath or the door is opening! how exciting oh, it's you, meh. Find something else more interesting pounce on unsuspecting person decide to want nothing to do with my owner today. Poop in the plant pot jump launch to pounce upon little yarn mouse, bare fangs at toy run hide in litter box until treats are fed, climb leg scratch leg; meow for can opener to feed me for playing with balls of wool, plan steps for world domination hunt anything that moves. Cat slap dog in face has closed eyes but still sees you so have my breakfast spaghetti yarn shake treat bag, so my left donut is missing, as is my right so peer out window, chatter at birds, lure them to mouth hit you unexpectedly. Crash against wall but walk away like nothing happened sleep yet climb a tree, wait for a fireman jump to fireman then scratch his face eat the fat cats food annoy kitten brother with poking annoy owner until he gives you food say meow repeatedly until belly rubs, feels good. Jumps off balcony gives owner dead mouse at present then poops in litter box snatches yarn and fights with dog cat chases laser then plays in grass finds tiny spot in cupboard and sleeps all day jumps in bathtub and meows when owner fills food dish the cat knocks over the food dish cat slides down the water slide and into pool and swims even though it does not like water kitty poochy man running from cops stops to pet cats, goes to jail a nice warm laptop for me to sit on leave fur on owners clothes push your water glass on the floor. Wake up wander around the house making large amounts of noise jump on top of your human's bed and fall asleep again. Weigh eight pounds but take up a full-size bed inspect anything brought into the house curl up and sleep on the freshly laundered towels, for hit you unexpectedly sniff sniff. Wake up human for food at 4am eat and than sleep on your face. Meow go back to sleep owner brings food and water tries to pet on head, so scratch get sprayed by water because bad cat cough, cat mojo purr when being pet. Always hungry lick butt, and sit on human. Cat not kitten around jump around on couch, meow constantly until given food, , poop in a handbag look delicious and drink the soapy mopping up water then puke giant foamy fur-balls hunt by meowing loudly at 5am next to human slave food dispenser. A nice warm laptop for me to sit on going to catch the red dot today going to catch the red dot today get video posted to internet for chasing red dot i could pee on this if i had the energy yet swat turds around the house kitty power. I'm going to lap some water out of my master's cup meow this human feeds me, i should be a god you call this cat food, i could pee on this if i had the energy i am the best, immediately regret falling into bathtub weigh eight pounds but take up a full-size bed. Fooled again thinking the dog likes me. Ears back wide eyed scratch me there, elevator butt yet meoooow and kitty loves pigs hide at bottom of staircase to trip human. Chase mice scratch at fleas, meow until belly rubs, hide behind curtain when vacuum cleaner is on scratch strangers and poo on owners food. Meow all night having their mate disturbing sleeping humans fall over dead (not really but gets sypathy), play riveting piece on synthesizer keyboard poop on grasses for licks your face. Plan steps for world domination woops poop hanging from butt must get rid run run around house drag poop on floor maybe it comes off woops left brown marks on floor human slave clean lick butt now caticus cuteicus hate dog have a lot of grump in yourself because you can't forget to be grumpy and not be like king grumpy cat munch on tasty moths licks paws. Slap owner's face at 5am until human fills food dish if it smells like fish eat as much as you wish for claws in your leg for climb a tree, wait for a fireman jump to fireman then scratch his face. Burrow under covers lick the plastic bag my water bowl is clean and freshly replenished, so i'll drink from the toilet stare at ceiling light so pushes butt to face. Spread kitty litter all over house destroy the blinds for attempt to leap between furniture but woefully miscalibrate and bellyflop onto the floor; what's your problem? i meant to do that now i shall wash myself intently poop in the plant pot if human is on laptop sit on the keyboard spill litter box, scratch at owner, destroy all furniture, especially couch cat ass trophy. Stare at wall turn and meow stare at wall some more meow again continue staring lick face hiss at owner, pee a lot, and meow repeatedly scratch at fence purrrrrr eat muffins and poutine until owner comes back so sweet beast vommit food and eat it again. Stand in front of the computer screen sniff catnip and act crazy but eat a plant, kill a hand eat a plant, kill a hand but pet right here, no not there, here, no fool, right here that other cat smells funny you should really give me all the treats because i smell the best and omg you finally got the right spot and i love you right now and licks paws."

    @all_sentences = @sent.split('.')

  def self.random_paragraph
    sentences = []
    rand(4..6).times do
      sentences << random_sentence
    end

    sentences.join(" ")
  end

  def self.random_sentence
    @all_sentences[rand(0..@all_sentences.count-1)].strip
  end

  def self.random_name
    name, count = '', 0
    while name.length < 5 && count < 100 do
      name = random_word(2)
      count += 1
    end

    return name
  end

  def self.random_password
    pwd, count = '', 0
    while pwd.length < 6 && count < 100 do
      pwd = random_word(2)
      count += 1
    end

    return pwd
  end

  def self.random_title
    title, count = '', 0
    while title.length < 20 && count < 100 do
      title = random_word(10)
      count += 1
    end

    return title
  end

  def self.random_word(count=1)
    @all_sentences[rand(0..@all_sentences.count-1)].split(' ')[0..(count-1)].join(' ').strip
  end

  def self.random_email
  "#{random_word}@#{random_word}.#{random_word}"
  end

  def self.random_vote
    rand(0..1) == 0 ? -1 : 1
  end
end
