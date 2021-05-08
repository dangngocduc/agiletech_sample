// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

BookModel bookModelFromJson(String str) => BookModel.fromJson(json.decode(str));

String bookModelToJson(BookModel data) => json.encode(data.toJson());

class BookModel {
  BookModel({
    required this.context,
    required this.id,
    required this.type,
    required this.hydraMember,
    required this.hydraTotalItems,
    required this.hydraView,
    required this.hydraSearch,
  });

  String context;
  String id;
  String type;
  List<HydraMember> hydraMember;
  int hydraTotalItems;
  HydraView hydraView;
  HydraSearch hydraSearch;

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      context: json["@context"],
      id: json["@id"],
      type: json["@type"],
      hydraMember: List<HydraMember>.from(
          json["hydra:member"].map((x) => HydraMember.fromJson(x))),
      hydraTotalItems: json["hydra:totalItems"],
      hydraView: HydraView.fromJson(json["hydra:view"]),
      hydraSearch: HydraSearch.fromJson(json["hydra:search"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "@context": context,
        "@id": id,
        "@type": type,
        "hydra:member": List<dynamic>.from(hydraMember.map((x) => x.toJson())),
        "hydra:totalItems": hydraTotalItems,
        "hydra:view": hydraView.toJson(),
        "hydra:search": hydraSearch.toJson(),
      };
}

class HydraMember {
  HydraMember({
    required this.id,
    required this.type,
    required this.isbn,
    required this.title,
    required this.description,
    required this.author,
    required this.publicationDate,
    required this.reviews,
  });

  String id;
  String type;
  String isbn;
  String title;
  String description;
  String author;
  DateTime publicationDate;
  List<Review> reviews;

  factory HydraMember.fromJson(Map<String, dynamic> json) => HydraMember(
        id: json["@id"],
        type: json["@type"],
        isbn: json["isbn"],
        title: json["title"],
        description: json["description"],
        author: json["author"],
        publicationDate: DateTime.parse(json["publicationDate"]),
        reviews:
            List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@id": id,
        "@type": type,
        "isbn": isbn,
        "title": title,
        "description": description,
        "author": author,
        "publicationDate": publicationDate.toIso8601String(),
        "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
      };
}

class Review {
  Review({
    required this.id,
    required this.type,
    required this.body,
  });

  String id;
  String type;
  String body;

  factory Review.fromJson(Map<String, dynamic> json) => Review(
        id: json["@id"],
        type: json["@type"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "@id": id,
        "@type": type,
        "body": body,
      };
}

class HydraSearch {
  HydraSearch({
    required this.type,
    required this.hydraTemplate,
    required this.hydraVariableRepresentation,
    required this.hydraMapping,
  });

  String type;
  String hydraTemplate;
  String hydraVariableRepresentation;
  List<HydraMapping> hydraMapping;

  factory HydraSearch.fromJson(Map<String, dynamic> json) => HydraSearch(
        type: json["@type"],
        hydraTemplate: json["hydra:template"],
        hydraVariableRepresentation: json["hydra:variableRepresentation"],
        hydraMapping: List<HydraMapping>.from(
            json["hydra:mapping"].map((x) => HydraMapping.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "hydra:template": hydraTemplate,
        "hydra:variableRepresentation": hydraVariableRepresentation,
        "hydra:mapping":
            List<dynamic>.from(hydraMapping.map((x) => x.toJson())),
      };
}

class HydraMapping {
  HydraMapping({
    required this.type,
    required this.variable,
    this.property,
    required this.required,
  });

  String type;
  String variable;
  String? property;
  bool required;

  factory HydraMapping.fromJson(Map<String, dynamic> json) => HydraMapping(
        type: json["@type"],
        variable: json["variable"],
        property: json["property"] == null ? null : json["property"],
        required: json["required"],
      );

  Map<String, dynamic> toJson() => {
        "@type": type,
        "variable": variable,
        "property": property == null ? null : property,
        "required": required,
      };
}

class HydraView {
  HydraView({
    required this.id,
    required this.type,
    required this.hydraFirst,
    required this.hydraLast,
    this.hydraPrevious,
    required this.hydraNext,
  });

  String id;
  String type;
  String hydraFirst;
  String hydraLast;
  String? hydraPrevious;
  String hydraNext;

  factory HydraView.fromJson(Map<String, dynamic> json) {
    print("Json: " + json.toString());
    return HydraView(
      id: json["@id"],
      type: json["@type"],
      hydraFirst: json["hydra:first"],
      hydraLast: json["hydra:last"],
      hydraPrevious: json["hydra:previous"],
      hydraNext: json["hydra:next"],
    );
  }

  Map<String, dynamic> toJson() => {
        "@id": id,
        "@type": type,
        "hydra:first": hydraFirst,
        "hydra:last": hydraLast,
        "hydra:previous": hydraPrevious,
        "hydra:next": hydraNext,
      };
}
