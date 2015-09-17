build:
	gitbook build

onepage:
	pandoc 0*.md -H style.css.html -s -f markdown_github -t html -o fu.html
	sed -i '' -e 's/<body>/<body class="markdown-body">/g' fu.html
