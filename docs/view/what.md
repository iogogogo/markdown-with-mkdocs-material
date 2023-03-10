符合google material ui规范的静态文档网站生成器，使用markdown进行文档书写

**mkdocs**

- python编写的markdown解释器、编译器，带有本地cli工具

- 自带基于Tornado的小型http服务，用于本地调试

- 内置一键式发布至GitHub Pages

- 内置mkdocs风格、readthedocs风格的主题，并支持自定义主题

- 支持调用python模块实现语法及渲染的扩展

**mkdocs-material**

- python模块，符合google material ui规范的mkdocs自定义主题

- 针对特定语法、功能做了渲染优化

- 根据客户端浏览器页面尺寸自动缩放，对PC、移动设备都友好

- 丰富的页面配色，多达19种主体配色和16种悬停链接文字配色

最佳实践: 建议仅使用[mkdocs-material](http://squidfunk.github.io/mkdocs-material/)官网支持的语法、功能，这样不会有渲染方面的异常，除非自己对mkdocs、mkdocs-material、html、js、css有一定的了解。

本文所有阐述的语法均是mkdocs-material官网推荐的。
