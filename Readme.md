# HamWavPlay

This small utility (I hope) will be used for my ham radio contesting using SSB. 

I use a very nice piece of Software called SkookumLogger (called SL from here onwards), which has lots of features - but sadly as I was mean when I bought my Elecraft K3S, I did not buy the voice recorder, having previously always used a PC/CAT combination to do the repatative "CQ Contest..."

SL assumes that you have the KDVR3, and for $300 I probably should have bought one .. but hang on it is $300... 

# Logger Functionionalty

With access to the source code - in theory I can add functionality that the developer is unwilling to add (I fully understand why he will not want to do this.... I think this could be a support nightmare).

But ... as I do my own support [grin] here goes.

# Mac Sound access

I eventually got a small framework done. This is the code you see at the moment.

# Delegates

I finally have a delegate working ... they appear to be just a different mechanism for doing Signals/Slots. Quite nice once you have a little luck getting them to work.


It appears that the delegate **audioPlayerDidFinishPlaying** is only triggered when the file gets to the end (this is great)... and "Stop" method does not trigger the delegate. I hope that this means the code logic is simpler.


#XVDR3 Functionality 

I need to try and see what we are trying to replace in more detail.


## Limitations

At the moment the filenames are hard coded. 


