```yaml

# Project information
site_name: Markdown语法详解(基于mkdocs-material)
site_url: https://iogogogo.github.io/markdown-with-mkdocs-material
site_author: ''
site_description: 关于mkdocs-material支持的markdown语法，包括传统语法和扩展语法
# Repository
repo_name: iogogogo/markdown-with-mkdocs-material
repo_url: https://github.com/iogogogo/markdown-with-mkdocs-material

# Copyright
copyright: Copyright &copy; 2016 - 2023 tao.zeng9@outlook.com

# Configuration
theme:
  name: material
  language: zh
  custom_dir: material/.overrides
  features:
    - announce.dismiss
    - content.action.edit
    - content.action.view
    - content.code.annotate
    - content.code.copy
    # - content.tabs.link
    - content.tooltips
    # - header.autohide
    # - navigation.expand
    - navigation.footer
    - navigation.indexes
    # - navigation.instant
    # - navigation.prune
    - navigation.sections
    - navigation.tabs
    # - navigation.tabs.sticky
    - navigation.top
    - navigation.tracking
    - search.highlight
    - search.share
    - search.suggest
    - toc.follow
  # - toc.integrate
  palette:
    - scheme: default
      primary: indigo
      accent: indigo
      toggle:
        icon: material/brightness-7
        name: Switch to dark mode
    - scheme: slate
      primary: indigo
      accent: indigo
      toggle:
        icon: material/brightness-4
        name: Switch to light mode
  font:
    text: Roboto
    code: Roboto Mono
  favicon: assets/favicon.png
  icon:
    logo: logo

# Plugins
plugins:
  - search:
      separator: '[\s\-,:!=\[\]()"`/]+|\.(?!\d)|&[lg]t;|(?!\b)(?=[A-Z][a-z])'
  - minify:
      minify_html: true

# Hooks
hooks:
  - material/.overrides/hooks/translations.py

# Customization
extra_css:
  - assets/stylesheets/extra.css
extra_javascript:
  - assets/javascripts/extra.js

# Extensions
markdown_extensions:
  - abbr
  - admonition
  - attr_list
  - def_list
  - footnotes
  - md_in_html
  - toc:
      permalink: true
  - pymdownx.arithmatex:
      generic: true
  - pymdownx.betterem:
      smart_enable: all
  - pymdownx.caret
  - pymdownx.details
  - pymdownx.emoji:
      emoji_generator: !!python/name:materialx.emoji.to_svg
      emoji_index: !!python/name:materialx.emoji.twemoji
  - pymdownx.highlight:
      anchor_linenums: true
      line_spans: __span
      pygments_lang_class: true
  - pymdownx.inlinehilite
  - pymdownx.keys
  # - pymdownx.magiclink:
  #     repo_url_shorthand: true
  #     user: squidfunk
  #     repo: mkdocs-material
  - pymdownx.mark
  - pymdownx.smartsymbols
  - pymdownx.superfences:
      custom_fences:
        - name: mermaid
          class: mermaid
          format: !!python/name:pymdownx.superfences.fence_code_format
  - pymdownx.tabbed:
      alternate_style: true
  - pymdownx.tasklist:
      custom_checkbox: true
  - pymdownx.tilde

# Page tree
nav:
  - 首页: index.md
  - 介绍:
      - 1. mkdocs-material介绍: view/what.md
      - 2. 提前说明: view/statement.md
      - 3. 最佳实践: view/bestpractice.md
      - 4. 关于: view/about.md
  - 安装:
      - 1. 本地环境搭建(含入门配置): install/local.md
      - 2. 发布至GitHub Pages: install/github-pages.md
      - 3. 发布至自己的HTTP Server: install/http-server.md
  - 语法:
      - 1. 语法总览: syntax/main.md
      - 2. 标题: syntax/headline.md
      - 3. 段落: syntax/paragraph.md
      - 4. 引用: syntax/quote.md
      - 5. 表格: syntax/table.md
```
