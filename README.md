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
    
   **B. Click Manage access**
    
    ![Manage Access](/images/manageaccess.png)
    
    **C. Click Invite a collaborator**
    
    ![Inviting a Collaborator](/images/Invitecollab.png)
    
    **D. Use your partner's github account names to add them**
        
    
3. Use the url for the repository and `git clone` to set up a remote connection to your newly forked repository locally (or on ASC) at the command line.

![Getting your Repository URL](/images/cloneRepo.png)


## Collaborative Coding

4. Modify the script `rc.sh` (from Week 5 lectures) inside of your forked repository from your command line using git. **Remember, your group members are working on this same document.**

5. You group's new script should adhere the following (**Read to completion before editing**):

    * Replace the loop in the script with a one-liner that converts sequence string to the reverse complement of that sequence using the `rev` command
    
    * Edit the `tr` command to be case-insensitive (can accept sequences in lower- or uppercase)
    
    * Remove any code that is no longer necessary to output the reverse complement of a sequence string
    
    * Print a single-line help message, instructing users about what they must provide with the script, if they don't provide a single argument when invoking the script. 
        * Use an `if...else` statement with these conditionals `if [ $# -lt 1 ] || [ $# -gt 1 ]` at the start of your script to test for the number of arguments given. 
        * Remember to print only the help message if there is not a single argument given at the command line to run the script with. 
         
    * Remove any echo statements that provide "sanity checks" (tells you that the code is behaving as expected). Redirect the reverse complement of the sequence string into a correctly formatted FASTA file named exactly as the input argument **but** with `rc.` appended to the beginning of the output filename. 
    
    * Name your new, efficient script as `rev_comp.sh` (You should not edit the original script, as a best practice, in case you need to start over)

6. Each group member should make commits to the collaborative repository for this assignment. The goal is to work together to pull together a functional script that creates a reverse complement FASTA file from a provided sequence FASTA file, **but do not worry if you cannot get your code to run properly - focus on adding, committing, and pushing changes to your collaborative repository in a responsible way.** 

## Lab Submission

7.  What to submit on Canvas:

    A. Respond to the following reflection question in a file called **NAME_reflection.txt** and commit and push your response to your collaborative repository 
    
    *Reflect on how you currently manage your documents and code, particularly content associated with publishable work. Would it stand up to a reproducibility     test? How do you think non-reproducibile research affects computational biology and bioinformatics? What about in your specific field of study*
    
    B. Download a `.zip` file of your repository and upload it to canvas. **This is a group assignment, so only ONE group member needs to submit to canvas.** 
    
    ![Getting Repo.zip](/images/submit.png)
    
    C. Use the text submission section on the assignment page to post a link to your Lab #4 repository hosted on Github. Again, only the single group member submitting the zipped repository needs to do this. 
