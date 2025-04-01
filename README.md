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
* **Ruby**: Version 3.3.5 or higher
* **Rails**: Version 7.1.5 or higher

You can verify if Ruby and Rails are installed with these commands:

```ruby
$ ruby -v
$ rails -v
```

If no version number is returned, you may need to install or update Ruby and Rails using a package manager.

### **1.1 Installing Ruby**
If Ruby is not installed or if you need to install a specific version (like Ruby 3.3.5), you can use a package manager or **rbenv**.
* **macOS/Linux**: Use [Homebrew](https://brew.sh/) to install Ruby.
* You can follow Ruby's official guidance on different package managers [here](https://www.ruby-lang.org/en/documentation/installation/).

Alternatively, you can manage Ruby versions with **rbenv**. To install **rbenv**, follow the instructions in the [rbenv GitHub repository](https://github.com/rbenv/rbenv).

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

## Assumptions

- The API returns dynamic data on each call. I was unsure if this was intentional, possibly reflecting real-time updates on restaurant availability or opening hours.
- I assumed that API documentation was not provided for this specific test. I encountered an issue where postcodes with spaces caused an invalid URL error in the API response. Typically, API documentation would specify the expected input format, such as postcodes without spaces. To address this, I implemented a solution that removes spaces from the postcode before making the API call.
- I selected the first **two cuisine types** because some names in the cuisine data (e.g., "Deals" and "Low Delivery Fees") did not seem like actual cuisine types. Based on the Just Eat website, cuisine categories generally focus on food types, so I followed the same approach.However, this can easily be adjusted to display all cuisine names if needed.
- The API response consistently returned the rating as a number (either a float or an integer), as specified in the test criteria. Since the test explicitly required displaying the rating as a number and the API provided it in the correct format, I assumed this behavior would remain unchanged and did not implement additional handling for variations in the rating data type.
- The exercise did not specify whether we should handle API errors for the user. While testing, the API always responded correctly. However, I added a basic error-handling solution that displays a message when the API response is not `200`. This could be improved further for a better user experience.
- The full implementation of this test can be found in the Rails **`app`** folder, specifically within the files:
  - `restaurant_api_service.rb`
  - `restaurants_controller.rb`
  - `search.html.erb`
- I created a custom error message: *"No restaurants available for this postcode at the moment."* when there is no restaurant data for a given postcode. You can test this using the fake postcode: `00000`.

## Improvements

- **Better user flow for searching:** I would separate the search bar onto an initial landing page with a banner. After entering a postcode, users would be redirected to a results page displaying the 10 restaurants.
- **Improve error handling for users:** Instead of a generic error message, I would implement specific messages based on the error type. For example:

  - **500 Internal Server Error:** "Apologies, this site is down. Please try again later."
  - **Invalid postcode format:** "Please enter a valid UK postcode."
  - **No restaurants open:** "There are no available restaurants in your area at the moment. Please try again later."

- The API response includes small logos for restaurants. However, restaurant images were missing in the response. I used a default Just Eat template image for each restaurant. If another API provides actual restaurant images, I would integrate them to improve the presentation of the restaurant cards.
