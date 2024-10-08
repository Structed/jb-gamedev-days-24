
// This is a Handlebars template that will be used to generate the final asset information.
// Replace the `icon_url` with the static URL of your own icon.

{
  "version_string": "{{ env.version }}",
  "download_commit": "{{ env.GITHUB_SHA }}",
  "browse_url": "{{ context.repository.html_url }}",
  "issues_url": "{{ context.repository.html_url }}/issues",
  "icon_url": "https://raw.githubusercontent.com/Structed/godot-playfab/main/addons/godot-playfab/icon.png"
}