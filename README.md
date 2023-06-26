<h2>🌱Environment:</h2>
<div style="display: inline_block" align="left"><br>
  <img align="right" alt="Walid-Ruby" height="30" width="40" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-plain.svg" />

- Ruby (version 3.2.2) with DevKit https://rubyinstaller.org/downloads/

- Bundler (gem install bundler)

- Chromedriver configured in path:
## Note 1:
Download it at https://chromedriver.chromium.org/downloads (download according to your Chrome version), unzip it in a folder (eg: C:\chromedriver) 
## Note 2:
In the PATH environment variable, include the path to the chromedriver folder (eg C:\chromedriver - without chromedriver.exe) - system restart may be required

- IDE: VSCode --- Useful Extensions: vscode-icons Cucumber (Gherkin) Full Support Ruby

- Roadmap for USING the project:🗺

1 - Clone the project

2 - Open Folder in VSCode

3 - Open the terminal (from VSCode, or the one of your choice and navigate to the project folder) and run the command 'bundle install'

4 - To run the scenarios, use the rake >name of tag<

Obs: For new tags, edit the Rakefile.rb.

## Note 3:
In this project there is Rubocop with all the rules enabled, it is interesting to do a treatment before starting to execute it.

<i>Run this code line to generate the Rubocop report</i>
```sh
rubocop --format html --out reports/rubocop_report.html
```


