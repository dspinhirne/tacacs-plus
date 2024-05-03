# Tacacs-Plus

This code was first created in the early 2000s during my time at Rackspace and was used
as the production AAA system for our infrastructure. I am republishing now due to various
requests I've received over the years to bring it back.

Note that I no longer run a production system and have no real means of testing this code.
The code is old, and probably a bit messy, but it was working when I last used it.
I assume that it still does.

# Usage
For most folks, the Client and Server classes will be the only ones of interest. These will
allow you to create a functional server and test it using the client. All of the other
classes exist to support the Client and Server classes.

See the examples under the scripts/test_scripts directory.

# Other Classes
AAA consists of 3 parts; authentication, authorization, and accounting.
Within each of these functions there are various packet types that
facilitate communication between a client and server. Classes
have been defined to allow the creation of complete TACACS+ packets. Every
packet will contain a header which is represented by the class TacacsPlus::TacacsHeader.

The body of each packet will be defined by one of the following classes:
 * TacacsPlus::AuthenticationStart
 * TacacsPlus::AuthenticationReply
 * TacacsPlus::AuthenticationContinue
 * TacacsPlus::AuthorizationRequest
 * TacacsPlus::AuthorizationResponse
 * TacacsPlus::AccountingRequest
 * TacacsPlus::AccountingReply

Since many of the fields within the various packet types are interchangable
with each other, I created a module for each packet field which is then mixed into
the appropriate packets. Pay attention to the included modules for
each packet class if you want to know which methods are available for use.

