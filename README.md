Laravel 9 Permissions Bash Script for easy revert to basic folder permissions and user types (www-data:root)

I created this bash script for the need to factory reset the files and folders of Laravel 9 projects, working in a permissions heavy based Linux environment 
meant that users needed their permissions in folders to save files, the problem is when we move back to production or fold into testing we want those 
defaults back.

Based on Linux OS Ubuntu 20.04, Apache webserver and Laravel v9, React was the templating engine and Vite was used for building styles.
