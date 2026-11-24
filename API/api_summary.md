# API Integration Summary

## 1. What is a REST API?
A REST API (Representational State Transfer API) allows applications to communicate with each other over HTTP.

## 2. APIs Used

### GitHub Users API
- URL: https://api.github.com/users/yuvi91827-afk
- Purpose: Fetches GitHub profile information.
- Data saved in: github_profile.json

### JSONPlaceholder API
- URL: https://jsonplaceholder.typicode.com/posts
- Purpose: Fetches sample post data for testing.
- Data saved in: sample_posts.json

## 3. HTTP Status Codes
- 200 OK: Request was successful.
- 404 Not Found: Requested resource was not found.

## 4. What is jq?
jq is a command-line tool used to read, filter and process JSON data.

Example:
jq '{name: .name, followers: .followers}' github_profile.json

This command extracts the name and followers fields from the JSON file.

## 5. Conclusion
Both APIs were accessed using curl, and their JSON responses were saved locally.
The jq utility was used to extract and inspect the required data.
