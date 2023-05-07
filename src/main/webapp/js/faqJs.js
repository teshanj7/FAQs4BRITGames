function loadData(name){
    if(name=="btn1")
    {
        document.getElementById("paraHelp").innerHTML = "<b>What are FAQs?</b> <br> -> FAQs are Frequently Asked Questions. <br> <b>What is Pegasus Apartments?</b> <br> -> Pegasus Apartments Pvt Ltd is a business organization that helps customers around Sri Lanka get their dream apartment. <br> <b>What services do we provide?</b> <br> -> At Pegasus Apartments, we let customers look for apartments and sellers are let to post advertisements for their respective apartments. <br> <b>When did Pegasus Apartments launch?</b> <br> -> We kickstarted Pegasus on the 6th of June 2010. <br> <b> How many employees are currently employeed?</b> <br> -> About 500 employees work for our company, Pegasus Apartments.";

        document.getElementById("imageHelp").src = "images/logo.png";
    }

    else if(name=="btn2")
    {
        document.getElementById("paraHelp").innerHTML = "<b>What can I do in the website?</b> <br> -> Users can visit the website and search for apartments. <br> <b>How can I make myself a Customer or a Seller Account?</b> <br> -> You could register yourself using the register button on the top right hand of your screen. Include your details and register, yes it is that easy! <br> <b>How can I login to my Customer or Seller Account?</b> <br> -> You could login to your account using the login option in the top right side of your screen. Include Correct details and you are ready to go! <br> <b>Do I have to login to interact with the website?</b> <br> -> Nope, but if you want to do more things related to booking, buying or selling you should have an account for yourself.";

        document.getElementById("imageHelp").src = "images/logo.png";
    }

    else if(name=="btn3")
    {
        document.getElementById("paraHelp").innerHTML = "<b>What can a customer do?</b> <br> -> Customers can search for Apartments, Book apartment inspection tours, Add liked apartments to favourites section, Contact with Customer care regarding matters etc. <br> <b>Can I post apartments using my account? </b> <br> -> No, to post advertisments you should have a Seller account. <br> <b>Do you provide loans or insurance facilities to registered customers? </b> <br> -> Yes, you could contact one of partnering Banks or Insurance companies for more details. <br> <b>How can I book myself an inspection tour for an apartment?</b> <br> -> You can search the respective apartment through the apartments section and select an apartment. Afterwards you could see the option to book yourself an inspection tour for the relevant apartment.";
        
        document.getElementById("imageHelp").src = "../images/imagesHelp/FAQCustomer.png";
    }

    else if(name=="btn4")
    {
        document.getElementById("paraHelp").innerHTML = "<b>What can a seller do?</b> <br> -> Sellers can post advertisments for apartments they own, they can also update and remove their respective apartments afterwards. <br> <b> Can I book inspection tours and proceed to buy apartments? </b> <br> -> Yes. A seller can do anything that a customer can do plus the additional seller facilities. <br> <b>What should I provide as legal documentation? </b> <br> -> A valid National Identity Card, your address, relevant deeds and other legal documents. <br> <b>How can I contact administration?</b> <br> -> You can visit our Contact Us page and directly contact us through the options available or you could visit our main building in Colombo 07. <br> <b>Is there a limit of apartments that can be posted at one time?</b><br> -> No, there is no such limit. You could post advertisments of any number of apartments after approval.";
        
        document.getElementById("imageHelp").src = "../images/imagesHelp/FAQSeller.png";
    }

    else if(name=="btn5")
    {
        document.getElementById("paraHelp").innerHTML = "<b>How safe is using your system with activities that goes on?</b> <br> -> We guarantee the safety of all users of the system and their information will not be shared publicly. <br><b>What nationality should I be to be a registered customer or a seller? </b><br> -> Any user from the around the world can access our system and use it but, to be a customer or a seller you should be a Sri Lankan.";

        document.getElementById("imageHelp").src = "../images/imagesHelp/FAQOther.png";
    }
}