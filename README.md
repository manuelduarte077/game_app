# Game App Flutter

## Flutter + Firestore + Clean Architecture + DI

![](https://miro.medium.com/max/920/1*u9jx_nAEHzeS-YI1T0a4MA.png)

- ## Data: in this layer will be all the logical reference to the data, such as models (objects), access to databases, access to API, etc.

- ## Domain: intermediate layer between the view and the data layer. This layer will host the different use cases, for example the use case of querying a collection in Firestore.

- ## Presentation: this layer is responsible for handling the view. Here there may be components that control access to the domain layer, eg provider. This layer is often said to be "dumb" since it only understands "painting" the data and it is only its provider that communicates with the Domain layer.

## Packages

- firebase_core
- cloud_firestore
- get_it
- provider
- pedantic
- very_good_analysis
