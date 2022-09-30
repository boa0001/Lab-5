# Lab Assignment 5
Github for Lab Assignment 5 (Week 7 - Version Control)

## Learning Objectives 

- Use version control software (git) to track changes to code
- Use git and Github to exercise collaborative best practices, by editing the rc.sh script from Week 6 to increase programmatic efficiency with your group
- Use commands git pull and push to interface remote repositories from the command line
- Reflect on how version control software contributes to scientific reproducibility

## Getting Started

1. Begin having one member in each group fork **this** repository to their github account 

![Forking a Repo](/images/forkrepo.png)

2. The member that forked this repository should now add the other group members as collaborators on the repository 

   **A. Click Settings**
    
    ![Settings Menu](/images/settings.png)
    
   **B. Click Collaborators**
    
    ![Manage Access](/images/manageaccess.png)
    
    **C. Click Add people**
    
    ![Inviting a Collaborator](/images/invitecollab.png)
    
    **D. Use your partner's github account names to add them each to the forked repo**
        
    
3. Use the url for the repository and `git clone` to set up a remote connection to your newly forked repository locally (or on ASC) at the command line.

![Getting your Repository URL](/images/clonerepo.png)


## Collaborative Coding

4. Modify the script `rc.sh` (from Week 5 lectures) inside of your forked repository from your command line using git. **Remember, your group members are working on this same document.**

   >Hint: We will be fixing the rc.sh script from the video 2.07 on Pseudocode. Remember from Lab 3 that you worked with both versions of this program that makes a reverse complement of a fasta file!

5. You group's new script should adhere the following (**Read to completion before editing**):

    * Replace the loop in the script with a one-liner that converts sequence string to the reverse complement of that sequence using the `rev` command
    
       >Reminder: In the pseudocode video, I mentioned that the loop was computationally inefficient, so it was then replaced with a pipe that first used the `rev` command which reverses the sequence and then the `tr` command that performs the complementation as a single one-liner instead of a loop.
    
    * Edit the `tr` command to be case-insensitive (can accept sequences in lower- or uppercase)
    
      >This is not something we did as part of the video, but will make the code more universal to accept fasta files that have either upper case or lower case sequences.
    
    * Remove any code that is no longer necessary to output the reverse complement of a sequence string
    
    * Print a single-line help message, instructing users about what they must provide with the script, if they don't provide a single argument when invoking the script. 
        * Use an `if...else` statement with these conditionals `if [ $# -lt 1 ] || [ $# -gt 1 ]` at the start of your script to test for the number of arguments given. 
        * Remember to print only the help message if there is not a single argument given at the command line to run the script with. 
         
           >"Sanity checks" are conditional statements that test a particular condition. Then, the program will execute one set of commands if the condition is true, or alternatively a different set of commands if the condition is false. This is important for flow control in programs. Here, this conditional will test whether the user has included a file on the command line when executing the script using command arguments. If not, it should print an error instructing the user to include the filename when executing the script. Review the syntax on command arguments and conditionals to try to parse this code.
         
    * Comment out any echo statements that also provide "sanity checks" (tells you that the code is behaving as expected). 
    
      > It is good practice to keep these statements in your code, but to put a `#` in front to convert it to a comment. This way if you later make edits, it will be easy to remove the `#` and turn the statements back on for later use.
    
    * Redirect the reverse complement of the sequence string into a correctly formatted FASTA file named exactly as the input argument **but** with `rc.` appended to the beginning of the output filename. 
    
      >Reminder: this updated syntax is part of the scripts provided as part of Lab 3.
    
    * Name your new, efficient script as `rev_comp.sh` (You should not edit the original script, as a best practice, in case you need to start over)

6. Each group member should make commits to the collaborative repository for this assignment. The goal is to work together to pull together a functional script that creates a reverse complement FASTA file from a provided sequence FASTA file, **but do not worry if you cannot get your code to run properly - focus on adding, committing, and pushing changes to your collaborative repository in a responsible way.** 

## Lab Submission

7.  What to submit on Canvas:

    A. Respond to the following reflection question in a file called **NAME_reflection.txt** and commit and push your response to your collaborative repository 
    
    *Reflect on how you currently manage your documents and code, particularly content associated with publishable work. Would it stand up to a reproducibility     test? How do you think non-reproducibile research affects computational biology and bioinformatics? What about in your specific field of study*
    
    B. Download a `.zip` file of your repository and upload it to canvas. **This is a group assignment, so only ONE group member needs to submit to canvas.** 
    
    ![Getting Repo.zip](/images/submit.png)
    
    C. Use the text submission section on the assignment page to post a link to your Lab #4 repository hosted on Github. Again, only the single group member submitting the zipped repository needs to do this. 
    
      >If you want to make sure your reflection was included, download the zip file from Canvas and unpack it locally to make sure your file is in there. If not, use git to add your file to the repository and then repeat the cloning step to upload an updated version of the repository. If your reflection is not included, you will not get credit for this lab!
