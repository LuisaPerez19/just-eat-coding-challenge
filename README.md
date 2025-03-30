# Just Eat Web application

## Project Overview
This project was developed as part of the **Just Eat Takeaway Early Careers - Software Developer interview process**. It is a web application that allows users to search for restaurants based on UK postal codes and displays relevant information about each restaurant. The application uses the Just Eat Takeaway API to retrieve restaurant data and presents it through a web interface built with **Ruby on Rails**.

## Features
* **Search by Postcode**: Users can enter a UK postal code to search for restaurants in that area.
* **Display restaurant data**: For each restaurant, the following details are shown:
   * **Name**
   * **Cuisines** offered
   * **Rating**
   * **Address**
* **API integration**: The app pulls restaurant data using the **Just Eat Takeaway API**.
* **Limit of results**: Only the first 10 restaurants from the API response are displayed.

## Installation process
Follow these steps to install and run the application locally:

### 1. **Install required tools:**
Before running the application, ensure that the following software is installed on your machine:
* **Ruby**: Version ruby 3.3.5
* **Rails**: Version 7.1.5

You can verify if Ruby and Rails are installed with these commands:

```ruby
$ ruby -v
$ rails -v
```

If no version number is returned, you may need to install or update Ruby and Rails using a package manager.

### **1.1 Installing Ruby**
If Ruby is not installed or if you need to install a specific version (like Ruby 3.3.5), you can use a package manager or **rbenv**.
* **macOS/Linux**: Use [Homebrew](https://brew.sh/) to install Ruby.
* You can follow Ruby's official guidance on different package managers [here](https://edgeguides.rubyonrails.org/install_ruby_on_rails.html).

Alternatively, you can manage Ruby versions with **rbenv**. To install **rbenv**, follow the instructions in the [rbenv GitHub repository](https://github.com/rbenv/rbenv).

Depending on your package manager, you can follow the instructions for Ruby installation [here](https://www.ruby-lang.org/en/documentation/installation/).

To confirm Ruby is correctly installed, restart your terminal and check the version:

```ruby
ruby -v
#Expected output: Ruby 3.3.5
```

### 1.2 **Installing Rails version 7.1.5**
Follow the guidance [here](https://edgeguides.rubyonrails.org/install_ruby_on_rails.html) to install the correct Rails version.

Once Ruby is installed, you can install Rails 7.1.5 with the following command:

```ruby
gem install rails -v 7.1.5
```

After Rails is installed, verify the installation by checking the Rails version:

```ruby
rails -v
#Expected output: Rails 7.1.5
```

### 2. Clone the repository
Navigate to the directory where you want to clone the repository and run:

```ruby
git clone https://github.com/LuisaPerez19/just-eat-coding-challenge.git
```

After cloning, navigate to the project directory:

```ruby
cd just-eat-coding-challenge
```

### 3. Install project dependencies
Ensure you're in the root directory of the project, then install the dependencies (gems) listed in the `Gemfile` by running:

```ruby
bundle install
```

This command will install all the necessary gems for the project, including **Bootstrap** for styling and **Faraday** for making API calls.

### 4. **Run the Rails Server:**
Once the setup is complete, start the Rails server with the following command:

```ruby
rails server
```

### 5. **Access the application**
Open your browser and go to:
http://localhost:3000

You should now see the Rails application running locally!
