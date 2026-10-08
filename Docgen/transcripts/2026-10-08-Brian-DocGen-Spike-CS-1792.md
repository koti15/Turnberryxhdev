# Brian’s DocGen spike walkthrough — October 8, 2026

Story: CS-1792. Related development context: CS-1474, CS-1831 and CS-1832.

Source: voice transcription supplied by Suram (Sekhar) from the group call. This is the supplied transcript, not an audio-verified or speaker-attributed transcript. Speech-recognition errors, unclear names, technical terms and speaker changes are preserved. Paragraph breaks are normalized for readability. Consult the actual spike documents and developer guide before treating uncertain wording as exact configuration or implementation instructions.

## Supplied transcript

All right, let's take my room in here. They go waiting for Armsl and Graham, right? Uh, Muncho's here.

Grandma's not, yeah. Let me paint Graham. Start if I hit record and transcribe on this?

Aunt Graham's here. All right, so, uh, I don't pick up more documents. We get these moved over into our central, um... repopitory location, that I wanted to kind of walk everybody through, the findings, so that when I do one of these spikes, we're not simply parking it up in some place, expecting everybody else to read it, but rather getting the, uh, the finding yet.

So, um, I've taken and wrote the central question. So this is our, um, design fight template, right? And, for story 1792, and the central question was, okay, what, how, it would do things to make sure that the document solution that was in place, the same communications, is gonna work and expandable to all 14 lines of business, right?

Um, so when we started looking at this in communication, there was some concern about, okay, does it, is it hard coding things? How is all this stuff starting to work out? So part of what this documentation or what these things do is tries to give a high level understanding of this particular object, when you start looking through it, you think, well, that's a lot of things, like what all is it doing in here?

And so, um, I put together this document and, um, a couple of others in terms of starting to try and explain it. Um, I'll play and put like a thing, I've got like a thing where I track things that I want to do later on. Um, I built out a physiopen moment that has kind of like the high level shell of what things are doing and how things are connecting.

I'll probably build it up a couple more layers and improve the UPN. I've asked for elements cloud, so I can use elements cloud to, uh, evacuate my way through it and use multiple levels on the diagram rather than physio. Uh, because I think that will probably work out a little bit better, but I'll also build a physio version because they like 2nd physio.

So, Um, I'll start with the conclusion. So, um, when we started, um, and my uh, conversation with Rob, we were a little concerned, because it looked maybe like things were a little bit brittle in terms of the way the templates were exposed and the way that they were taken and turned into adoption, right? But it might be that all these steps started taking it and representing something that looked like, um, Yeah, indignation, and then the Amish group that we would have to encode in the Omni strip, work, in order to take in, show that they're front, gotten temples.

So, good news, that's not the way it actually is rather The document template urging piece of it is dynamic, but you do need to understand a couple of things in terms of when you get assigned to take and build one of these options, right? So it does extract things and works pretty automatically. I'll show you some of the pieces for how we do things.

Some of you may already know something about options. So if I'm giving you repeal, then forgive me. But what Doctor is going to do is it's going to be taken, build a set of tokens, and those tokens are going to get burned into a work document, and those tokens have some places that they need to come from.

And it really means that they have to exist somewhere here in the data that lives in the omni strip. So I'll just play with that, I mean, since I come to it. So, going back to this.

Where is your question? Like, how can we, do we need to do something so that we can make all this taken 14 lines of business? My biggest concern is the growing list of options that they're going to have to select from.

And so I think we're probably gonna want to think about something in terms of classification. It doesn't have to happen right now. But at some point, we're probably going to want to take and do something in terms of understanding how to classify and organize the number of templates that could arise once we get to 14 lines of business, and you'll see a little bit more about that in just a minute.

So, Um, some of my definition of done, like, I wanted to say that I've done a new Tyler template for a while in business, not yet, sir, right, this host, generates an end in the development order. I did that. Howland Business is represented in templates.

I got some fine, there's a finding that says that. The post of adding a template is known for material type. You've got that, the steps had a template, are written for developers.

We've got a talking for that. And it just depends on whether the re-archite actually reported. And a dead pass, and we said, we're gonna keep the current design.

Um, out of scope, we're excited, send communication entry point or routing material pads to find the standard values, MMR, vacuums, material type. There's a need to compare, I think, there that probably needs that... The same and borrow, and show it to the local...

It looks like it breaks the pattern of stuff, it's there, um, and they, that was something that came in from Medicaid and the business, so we may eventually want to look at, um, including that. Um, 15, and then it says pitching to punch or missing between Lord. Um, that's it, you know, work for them, scope, it wasn't necessary done.

I haven't taken done everything, but there were 50 things in this order that I had to pull in order to make things work. So, um, I'll then step over just like people can read through the different things I did. My approach.

I watched, I love it by element, through the obvious script and traced every single thing down, as far as I could, all the way to all the constituent components, all the constituent data wrapper, only to from Apex classes, like just traced everything all the way down, looked through the documentation, and got the point where I could, they can build something out, everything puts in. SH tug one, but I did do some comparison in terms of data and QA in order to find those. So, for the findings.

Um, merchant labels. Um, a lot of the stuff is, kind of happens automatically. So it's available, it works, there's a pattern for how to make things show up on the screen.

There's a pattern for how things show from the selections, and I've got all of that kind of walk, there's walk through in this document, adding a letter template that tells you the sorts of things, like, one, make sure that I'm a, a contributor, or, you know, an administrator in the library, right? If you don't belong to the library, then you won't be able to see anything and if you're just a viewer, you won't be able to create temperance. So it's wrong, the problem you have in terms of create templates and being able to generate things.

Excuse me, 100% came from your status in terms of adopt Jed library. Excellent? Um, The merge variables.

It's kind of like a mustache pattern in terms of putting things in, which is good, a pretty covered pattern. The old notice and some other stuff, but I'd ram do. That's the verge language that I've seen, like, for doing things in our upside learning computer pattern.

So, when we went to merge, it follows up a statue pattern. Or handle orders. You'll usually call it, you know, this is called either mustache or handle wars.

Excuse me. There are some suspects that do some particular things. So, you see the system, the eye system, this is what they need.

Manual API manual is it manual means it's going to show up on one of the screens at like the additional information page, right? And the API manual means it will also take a try and match a value, and I'll show you where those things go there. So, uh, binding too.

There's no practical seeing count on a template, so we can do as many as we want. The real practical ceiling is that you're going to get a very, very, very long list if we have 14 lines of business and 500 templates. That's not a ceiling in terms of a technology, but it's probably a ceiling in terms of human brains, right?

Which is where I'm talking about that to add something in terms of classification. You'll find that in the suggestion stories that I get down to it, yeah. Finding number three.

Light of business. They're a little they're a little wonky in the way that they pick it. They've got a bunch of things like category, department, group, and they have not defined what those things are notionally.

And when you look at the data, They don't fit an notional pattern. Like they kindly got used a couple of different ways. And so we like, we read some of that.

You can see what's up in my 52 thought here, right? Line of business. Sometimes it's in the group for claim response letters, the virtual NEP.

There's noticed Medicaid Medicare, and the VA letter for other families that appears only in the template. Vera Blue, FC, M and Pair, I think, and uphold, commercial uphold, and the grouping list has 7 lines of business, commercial, MVP, ideas. So it was Medicaid, nightmares, secure blue, VA, on 14.

So obviously we've had the beginning, add values there as we outline the business. Um, the tropic names drive behavior, uh, with no validation. Uh, meaning that's similar, like, the suffix and the lash underscore decides where a value comes from, system, API system, build automatically, manual, API manual, are shown to the digital type A. So you just got to be careful because a misspell for missing suffix.

Um, affects things. It's all asensitive, so if you've got to, if you use a small, you know, like M, and it's a capital M, in terms of the way the data matches, you're gonna get a blank field, so you really need to actually take a merger dot and do the preview and make sure everything gets run there. Um, There's some works like when you do an RTB, so there's RTB underscore, you might look at that thing, oh, run the business.

Go. And actually, that's text. part of the dot gym. It's part of the actual document tool, and it means it is a, it will automatically generate a rich text area. And incidentally, that also switches from a synchronous adasin furnish process.

Uh, or from an AC British to a synchronous process, excuse me. And so all of a sudden, there's a chat that exists in some of the higher orgs and exists in the obvious strip. But the actual integration procedure wasn't in our work, so that will probably need to be seated into the IT organ as well.

So we need to make sure that that's true, uh, because it started, like, the amplets started not generating what I took and played with, switching something from that RTV to, um, just a stamp, had insert. where they synchronous and fail silently and they give it to, uh, cover all the window. It went real quick. Before you go on, the bullet before you made a comment that says that everything is case sensitive.

And normally, in the tech world, I would say, Yes, everybody knows that, but does everybody really know that? So I'm just, it may be the dumbest question of the day, but I'm just going to ask it. list it in there that everything is case sensitive? So you have a misspelled, or missing suffix, makes the token automatic.

Does it need to say that it's case sensitive, too? Just asking? That you're saying.

Thanks. Um, you know, it... Java fit tends to maintain sensitive.

Apex tends to be not being sensitive. And so, like, I take in, kind of make those other things, and there's a place where, in the record, where we do, um, a mapping in terms of the, uh, a field name, that we've taken plug in, go to make things automatically preload, um, which, again, so that, that is pretty cool. Okay.

Uh... What? So, they need template at the library membership.

We talked about that. Um, you'll be able to tell, because you'll get something that was like this, or if you see exception 400, which has no rose for assignment. And so object, your first thought should be, oh, maybe I'm not a, uh, library, uh, contributor in this particular...

Um, by number six, this one, Missing Components Fail silently. You know, it kind of depends on where they are, but, like, uh, interestingly enough, you can deploy this in the Saddami shrimp and exist. It has a call.

There's a call in the apex that's going to go to the omniscript, but it doesn't form a per dependency. So, when it ends up doing, it's failing silently in terms of the visual portion component that shows up on the on these shows. So, um, I kind of had to trace my way down to that big console, but that's just, so, like, if you start seeing things where something is just spinning and it's not working, um, it's probably gonna be the, uh, the AC credits.

Probably just gonna be that basic, that's, uh, uh, checked making room status on the, that being referenced by the, uh... If you see something spinning, like, one of the persons I do is trace to the, um, lightly led components in play, it's 58 packs. See if there's anything that it's referencing, um, also taking user console pool to see not just the error, but any other, uh, things in the surface there, no one.

Classification fields happen over the media. So, here's, like, taken to where the class begin fields group, category, compartment, object type, entity type, letter type, internal type. Only material type and letter type are known to drive selection, department, category, and object are used consistently.

Group is not, before the line of business, for claims, response letters, a function for appeals letters, an audience, for service letters. So, you're just copping stuff, you may end up, you're gonna end up finding some, uh, some, we're just gonna continue the inconsistency. So, like, I think we probably want to get to is a documented decision among all the teams using document, but, hey, how are we gonna use these fields?

And then, what, record them somewhere notably so that we know what they mean? There is a document that I found that was the original source materials. It does not do things the right way in terms of helping one understand such things.

So this is an aside, as you guys are writing descriptions, do not write descriptions that tell me the same things I could know, like simply looking at the field API name. And I'll show what I mean here in this design. It's not the hammer anymore, just to make sure that you guys don't do something.

But it's not a department, department number score C. Picklets, this field is used north at the part values identify the letter simply. Like, really?

The department holds department. I would have never figured that out. Do not do this in your description.

Every time you create a field. Write a description. Do not ever follow this pattern and restate what's in the ABI name.

Explain what it's used for, where it's, why it being created, what it notingly means, and the fields or functions that are impacted by it. Got it? Because this doesn't help.

Look, this is starting to grow the group value. Do you know what it is? I know.

But you literally can't. And when we take in query in the data, like, we go over here, you know, we'll go to QA. that. Look it this way.

What if we do... So, Drew. Sometimes it's provider non coding appeal.

Sometimes there's coding appeal. Sometimes it's member, sometimes it's other, BA. Provider coding appeal output.

These things start, like, it gets really hard to kind of understand what these emotionally mean. And we probably need to, you know, one type of apartment and then kind of get everybody together so that we start deciding what they need, because my thinking is through probably should start to become, um, probably the light of business that seems like it probably makes sense. Let me go back to the...

So, if we take into, uh, empathy... Right, so, there is probably a right version. I think it's that audience here as well.

No, so there's probably a right thinking in terms of starting to get our classification rights and we're going to have, we should have some time to kind of think about that and get it to the right thing. Um, originally I was thinking of thinking about 3 architect things, once I and then I started getting a feeling like, hey, I am not sure that this is as brutal as what we were thinking it was. Um, the other thing is there's a lot of functionality in here and the things I did not expect to find is that it uses the, um, internal external links object.

So you remember that? It's used here in order to identify documents in al fresco for attaching and sending out. So that might means that there's a regression we need to write somewhere that says that make sure that our internal external fraud and non-faud links.

Right? We should probably understand how that affects this individual thing. Got that, uh, whoever with the lesson, so on, I think you are the last person playing with that intellectual link.

So I don't know if you do that, but it actually is plugged in here when you're selecting documents. So some of those are written as documents. And it probably, you know, is probably worth the question of if any of those are sensitive, where it would be bad to send them out in a, uh, uh, in this environment.

For the most part, I would expect that our entire process, in terms of sending letters out, can actually be triggered from a non-positive power. Like, something stops somewhere and we don't send mail. I assume all that's true.

Um, But it's probably a thing that we should at least make sure that we know and understand and document at some point. If it doesn't really, it does, the document that we have doesn't explain the behavior or the expected behavior or how it works in non-funding violence. Okay?

So, um, does this use the non-croft Ford lower environments in this piece or no? I haven't tested it out. I don't think that it does, but, well, I think that it's probably going to, and I am not sure how we've taken and made all those things fit together.

I have not looked closely enough in conclusion or there's other pieces. That's why I like it in a redirection for someone. I think it's a thing you can run down, it might pass somewhere.

Okay, good. So, how do we know that? Um, I think I already mentioned that you end up creating something that looks like.

Here we go. So here's a letter. So Delson does something and it'll be like, you know, current date, right?

In parentheses. So we can decide what that, you know, what that token is. There's instructions in this document said to use the snake page, which is like current underscore date comes for, that should actually be a capital system.

Um, like, there's, there's ways that they, that he recommend doing that. And so you can see the handlebar's treatment and all these things. Okay?

The way you, so once you've taken and created that document, If we go to the document template designer, And I'm gonna do a new one here, just so we can. So this is where you got stuck from. So I'm gonna do new.

This is provided by Salesforce, so we can take, um, I'll do, I think, in a couple in an order. So we use a custom class, the custom class name, the CNC code, custom token data extractor. Then when we take and grab this whatever we want.

Yeah. So, I grab this. It's gonna take a ride it to the library, which I need to be a part of.

And it is going to take an extract instead of tokens. So, I'll call it... So when we do that, it takes in loads of file and takes and saves all the tokens.

So, I'm gonna go over here and, uh... Keep going here. We're gonna export, and I'm gonna go...

So, he heard my set of tokens and just created creative. Notice that this token API mapping name is empty? That's gonna need to be pre-filled out, anything where I wanted to automatically merge something from somewhere else.

So, this conserve is basically a mapping or a, uh, A deal. you know, it does it does some different things, right? So if I go in and do this and then they can do. Provider.

You'll notice on mine that I've taken and filled out today date. So if you wanted to, they could do an automatic date system, you have to take and do this in order to make that happen. This is mapping to things as they exist in the um, in the omniscript data, and that takes and causes them to actually emerge.

If it's simply, um, and so that's why I got most of these as API manual, um, This one could actually be, um, manual. So when it says manual or API manual, it shows up on the screen for something to fit. So, and to go here, we're running out for pat time, but I'll just do this last thing there.

So I'll go over here to the XH member app. going to go to a pace. I'm gonna get the same communication button. Um, it's gonna do the check.

So right now, we don't have the ability, like, you can never sing communication if you don't own the case. So if that becomes not true at any point in a business school, we'll need to have the, when they're basically probably need to push that either to, um, the user or to the data, you know, configuration data and decide what that means. But right now, the past will be true.

I'm going to do some communication. And you'll see here that I'm gonna have There we go. So, I'm gonna say this is other communication.

If we go back to the data export, I don't have the document. Um, This is configured using like those material types and this is, so these are the material types, and I think that ends up being what's called channel. It's back in my document says that they order mine.

So you'll see here that department service, that's department is not consistently used. I think the right answer is service for the department. group, here, like, this would be on the line of business, and the letter is host prequel, right? But none of these are actually filtered.

So if it gets long enough, that's gonna be a problem. Right? But I'm gonna select that for now.

What this does is it have lots of things. So we can actually upload files here. and choose a thing and it will include that in the print or in the email that we send out. This one is defined only as print because of the channel.

And then it's got, it looks at the different things that are related to it, so I can take it inside one of those. This one is not automatically telling the address happening. because, um, I've selected a provider and it's connected to a member, um, This is probably not a great thing. until you end up, I think, intending to do one time addresses for everything. Like, we were looking, including this, but we'd have to think about it as a little deeper mouth.

But right now, I think everyone's gonna have to take and use, like, a temporary one time address, because we don't lean the provider to a case that has a number or a claim. Right? So this kind of a weakness of that decision might be a chance to have a discussion in the future about that.

But notice everything that I just felt on that lap screen now shows up, and if you'll look at all these things here, and we look back at our data export, you'll see that those things start to say the word manual. So there's one, two, three, four, five, six, seven, eight, the same manual. And if we look at this page, one, two, three, four, five, six, seven, eight, fields that appear on this conditional information page, right?

And the free form text. This is the non RTD. So if you do a rich text, it has to live in its own paragraph.

If we don't do it, it rich, and reach what preform text, yes, it is. Three, four. Dad, it can go in line, and you'll see that when I take him rather simpler.

So I'm going to get to this last page, the review is submitted, and it's going to show the different things here, including that document that I uploaded, and the merged version of the letter, and then I view this, we're going to see things like the date showed up, that system, today, date. Here's the address information I typed in here, like the claim, the case, like that. Um, this one right now is showing up like this, right?

Um, I think that comes from the way that the uh, document is set up on the merge standpoint. I don't, we may have to take it to a little plane to figure out how to make these things consistently lined up when it's random. Because it's right now it's a little bit interesting trying to make all that happen.

But you've seen that everything, um, Here's Henry. In response to your recent inquiry, like if we look at the provider free form, See that, and then reform act API manual. And here's my 3 form packs that popped into the deal right there.

Okay? So it's pretty straightforward. And yeah, at the beginning, these things lined up, there's probably going to be trial and error when you take in, build up this template here. to get them to get them to all, why not?

So here, notice that because of the length of one way to kind of help ourselves with it, it's probably make shorter names. But long names will tend to take and make word do weird things and it's going to be a little bit harder for you while letting it up. Make sense?

So, uh, there's gonna be 2 documents available. One is this, um, So, one is this dot gin, adding a 11 template depth guide, which talks about the prefix, the tokens, the template checks. It's got the queries in there, it's got my notes and some things about what the different field needs.

And there is the findings, document, that makes them probability spike. People put that in there. Now, there's despite completion document that says all the things, has my recommendations.

There's a set of things here. So proposed stories and actions. So all of these are QBD, but define classification values for templates would roll for the VAs, right?

Dude, filter template section 5 line of business. I think that's, I don't think we need that right away, but I think we're eventually gonna want that. How was to maintain the same communication dependency diagram?

That's me taking and doing that physio that I've had. Brant template authors at library access. That's the thing we always need to need to do.

So we probably want to make and make that consistent in the lower environments for all of our debts to make them all, um, library administrators. Valid token games up exists, like we may eventually want to do a thing so that we take a look at those and throw errors up when we try and create those, like maybe that's something we would think about. And remove the group process from it, but I probably don't need for that.

I'll delete that out of my station, XHDF one, but, like, we can either take and re, like, use that with the base market, kind of finish things out, or we can review a room like that. And here's all my references. Here are some of the, uh, knowledge articles that we information came from, and I loved Britney's.

Okay. Good questions. So, not all of your design spikes should be nearly this involved, like, well, Tim could probably get me once that are quite this big, but I do have a template that I've created, which is our science fight, that was, and I think, like, the story, the offer, the benefit, herb story, and my expectation, it's a design bike, has an inherent question.

And so I try to say, what that question is, give ourselves in depth and understand, and then do what we did. And these things give us away, I'm saying, here's a despite spike here. why we thought it was important. Here's our findings, and get it in a way that anybody can see and finish it.

Right? Like, I said, this one's a long one because it ended up being a bit big in terms of trying to figure stuff out. Um, But I would expect this to take and follow.

I got a base template of this that I've created to put it in, put in the sheriff's space, and we should be filling something of this out when you take an underdated design space. Or when we take, when we undertake a strike. Right?

Sorry if we're going 10 minutes over. I will try and do more efficient than the 10. This was great, Brian.

Thank you very much. Yeah. Did this make sense to everybody, are we feeling comfortable with what we see, what our next steps are?

So, great. So, um, and that's what you and P, like, when we take into a story for a template, we know that we need to tell the development. We don't want them making decisions, like, the classification, like, group department, things of that nature.

Yeah. We need to want to make that call and include it in the stories, which is currently not there, and then they require a conversation with a business. And we probably want to have a conversation which took larger group at some point, because in fact, provider appeals, it affects run the business, it affects us.

Like, every place where we're going to send a template, we should eventually, like, as we start to put up our COA, this is the thing we should build up the Sarah, say, Hey, you know, I think we noticed it's not consistent, you know, all the in terms of these classifications. We think, one, we should make one a document that's write it down, because we start calling it. We should probably push the old stuff to take a matchup to it, and we should consider whether we want to make this, that thing where we select him.

Let's either one, how a filter criteria, capability, or two, have additional filtering from that top page, right? Some way to take it, truncate that lift, because by expectation... Oh, a million percent.

So. Cool. Thank you for all this work, Vicky.

Cat. Are two friends doing? Yeah.

All right. Cool. Thank you so much, Brian.

We'll see. if you have any questions. I'm sure we'll review these at some point. Thanks, everybody.

Thank you. Yeah, thank you. Thank you.
