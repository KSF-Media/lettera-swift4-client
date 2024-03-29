# Swift4 API client for lettera

<h2>KSF Media's articles service</h2> Changelog for V3: <ul><li>Unified <code>ListArticle</code> and <code>RelatedArticle</code> into a single type <code>ArticleStub</code>. NOTE: In contrast to the old types, <code>ArticleStub.relatedArticles</code> is now an optional value.</li> <li>Added endpoint <code>/article/{uuid}/stub</code></li> <li>Removed deprecated endpoint <code>/article/search</code></li> </ul> 

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project.  By using the [openapi-spec from a remote server, you can easily generate an API client.

- API version: 3.0.0
- Package version: 
- Build package: org.openapitools.codegen.languages.Swift4Codegen

## Installation

### Carthage

Run `carthage update`

### CocoaPods

Run `pod install`

## Documentation for API Endpoints

All URIs are relative to *http://http:/v3*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ArticlesAPI* | [**articleUuidGet**](docs/ArticlesAPI.md#articleuuidget) | **GET** /article/{uuid} | 
*ArticlesAPI* | [**articleUuidStubGet**](docs/ArticlesAPI.md#articleuuidstubget) | **GET** /article/{uuid}/stub | 
*CategoriesAPI* | [**categoriesGet**](docs/CategoriesAPI.md#categoriesget) | **GET** /categories | Read categories
*ListsAPI* | [**frontpageGet**](docs/ListsAPI.md#frontpageget) | **GET** /frontpage | Returns a list for a front page
*ListsAPI* | [**latestGet**](docs/ListsAPI.md#latestget) | **GET** /latest | Returns a list of latest articles
*ListsAPI* | [**mostreadGet**](docs/ListsAPI.md#mostreadget) | **GET** /mostread | Returns a list of most read articles
*ListsAPI* | [**presetPresetCategoryGet**](docs/ListsAPI.md#presetpresetcategoryget) | **GET** /preset/{preset}/{category} | Load a preset model
*ListsAPI* | [**presetPresetCategoryPost**](docs/ListsAPI.md#presetpresetcategorypost) | **POST** /preset/{preset}/{category} | Update a preset model
*ListsAPI* | [**searchGet**](docs/ListsAPI.md#searchget) | **GET** /search | Returns a list of search results
*ListsAPI* | [**tagTagGet**](docs/ListsAPI.md#tagtagget) | **GET** /tag/{tag} | Returns a list of latest articles by tag


## Documentation For Models

 - [Alignment](docs/Alignment.md)
 - [Article](docs/Article.md)
 - [ArticleStub](docs/ArticleStub.md)
 - [ArticleType](docs/ArticleType.md)
 - [ArticleTypeDetails](docs/ArticleTypeDetails.md)
 - [Author](docs/Author.md)
 - [Block](docs/Block.md)
 - [BoxInfo](docs/BoxInfo.md)
 - [BoxType](docs/BoxType.md)
 - [Category](docs/Category.md)
 - [Cutoff](docs/Cutoff.md)
 - [ImageInfo](docs/ImageInfo.md)
 - [Paper](docs/Paper.md)
 - [Scoring](docs/Scoring.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author



