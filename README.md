# Risi Professional Document Template

A professional document template package for Typst, designed for creating high-quality reports, papers, and business documents.

## Features
- Clean, professional layout
- Configurable styling options
- Built-in support for figures, tables, and citations
- Responsive design for both print and digital formats

## Installation
```typst
#import "@preview/risi-pro:1.0.0": *
```

## Usage
```typst
#show: doc => risi-pro.with(
  title: "My Document",
  author: "John Doe",
  date: datetime.today(),
  ...
)(doc)
```

## License
MIT License - See [LICENSE](LICENSE) file for details.
