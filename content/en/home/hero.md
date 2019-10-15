+++
# Hero widget.
widget = "hero"  # See https://sourcethemes.com/academic/docs/page-builder/
headless = true  # This file represents a page section.
active = true  # Activate this widget? true/false
weight = 10  # Order that this section will appear.

title = "Crow Translate"

# Hero image (optional). Enter filename of an image in the `static/img/` folder.
hero_media = "screenshots/main.png"

[design.background]
  # Apply a background color, gradient, or image.
  #   Uncomment (by removing `#`) an option to apply it.
  #   Choose a light or dark text color by setting `text_color_light`.
  #   Any HTML color name or Hex value is valid.

  # Background color.
  # color = "white"
  
  # Background gradient.
  # gradient_start = "#4bb4e3"
  # gradient_end = "#2b94c3"
  
  # Background image.
  # image = ""  # Name of image in `static/img/`.
  # image_darken = 0.6  # Darken the image? Range 0-1 where 0 is transparent and 1 is opaque.

  # Text color (true=light or false=dark).
  text_color_light = false

# Call to action links (optional).
#   Display link(s) by specifying a URL and label below. Icon is optional for `[cta]`.
#   Remove a link/note by deleting a cta/note block.
[cta]
  url = "https://github.com/crow-translate/crow-translate/releases"
  label = "Download"
  icon_pack = "fas"
  icon = "download"
  
[cta_alt]
  url = "https://github.com/crow-translate/crow-translate"
  label = "Source code"

# Note. An optional note to show underneath the links.
[cta_note]
  label = '<a class="js-github-release" data-repo="crow-translate/crow-translate">Latest release<!-- V --></a>'
+++

A simple and lightweight translator that allows to translate and speak text using Google, Yandex and Bing.

<span style="text-shadow: none;"><a class="github-button" href="https://github.com/crow-translate/crow-translate" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star this on GitHub">Star</a><script async defer src="https://buttons.github.io/buttons.js"></script></span>
